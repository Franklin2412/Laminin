package com.squareup.haha.perflib.analysis;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.collect.ImmutableList;
import com.squareup.haha.perflib.Instance;
import com.squareup.haha.perflib.NonRecursiveVisitor;
import com.squareup.haha.perflib.RootObj;
import com.squareup.haha.perflib.Snapshot;
import com.squareup.haha.trove.TLongHashSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TopologicalSort {

    static class TopologicalSortVisitor extends NonRecursiveVisitor {
        private final List<Instance> mPostorder;
        private final TLongHashSet mVisited;

        private TopologicalSortVisitor() {
            this.mVisited = new TLongHashSet();
            this.mPostorder = new ArrayList();
        }

        public void doVisit(Iterable<? extends Instance> iterable) {
            for (Instance accept : iterable) {
                Instance accept2;
                accept2.accept(this);
            }
            while (!this.mStack.isEmpty()) {
                accept2 = (Instance) this.mStack.peek();
                if (this.mSeen.add(accept2.getId())) {
                    accept2.accept(this);
                } else {
                    this.mStack.pop();
                    if (this.mVisited.add(accept2.getId())) {
                        this.mPostorder.add(accept2);
                    }
                }
            }
        }

        ImmutableList<Instance> getOrderedInstances() {
            return ImmutableList.copyOf(Ascii.reverse(this.mPostorder));
        }

        public void visitLater(Instance instance, Instance instance2) {
            if (!this.mSeen.contains(instance2.getId())) {
                this.mStack.push(instance2);
            }
        }
    }

    public static ImmutableList<Instance> compute(Iterable<RootObj> iterable) {
        TopologicalSortVisitor topologicalSortVisitor = new TopologicalSortVisitor();
        topologicalSortVisitor.doVisit(iterable);
        ImmutableList<Instance> orderedInstances = topologicalSortVisitor.getOrderedInstances();
        Snapshot.SENTINEL_ROOT.setTopologicalOrder(0);
        Iterator it = orderedInstances.iterator();
        int i = 0;
        while (it.hasNext()) {
            i++;
            ((Instance) it.next()).setTopologicalOrder(i);
        }
        return orderedInstances;
    }
}
