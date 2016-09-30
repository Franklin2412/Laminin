package com.squareup.haha.perflib;

import com.squareup.haha.trove.TLongHashSet;
import java.util.ArrayDeque;
import java.util.Deque;

public class NonRecursiveVisitor implements Visitor {
    public final TLongHashSet mSeen;
    public final Deque<Instance> mStack;

    public NonRecursiveVisitor() {
        this.mStack = new ArrayDeque();
        this.mSeen = new TLongHashSet();
    }

    protected void defaultAction(Instance instance) {
    }

    public void doVisit(Iterable<? extends Instance> iterable) {
        for (Instance instance : iterable) {
            Instance instance2;
            if (instance2 instanceof RootObj) {
                instance2.accept(this);
            } else {
                visitLater(null, instance2);
            }
        }
        while (!this.mStack.isEmpty()) {
            instance2 = (Instance) this.mStack.pop();
            if (this.mSeen.add(instance2.getId())) {
                instance2.accept(this);
            }
        }
    }

    public void visitArrayInstance(ArrayInstance arrayInstance) {
        defaultAction(arrayInstance);
    }

    public void visitClassInstance(ClassInstance classInstance) {
        defaultAction(classInstance);
    }

    public void visitClassObj(ClassObj classObj) {
        defaultAction(classObj);
    }

    public void visitLater(Instance instance, Instance instance2) {
        this.mStack.push(instance2);
    }

    public void visitRootObj(RootObj rootObj) {
        defaultAction(rootObj);
    }
}
