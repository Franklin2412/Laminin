package com.squareup.haha.perflib.analysis;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.squareup.haha.perflib.Instance;
import com.squareup.haha.perflib.NonRecursiveVisitor;
import java.util.Comparator;
import java.util.PriorityQueue;

public class ShortestDistanceVisitor extends NonRecursiveVisitor {
    private Instance mPreviousInstance;
    private PriorityQueue<Instance> mPriorityQueue;
    private int mVisitDistance;

    public ShortestDistanceVisitor() {
        this.mPriorityQueue = new PriorityQueue(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, new Comparator<Instance>() {
            public int compare(Instance instance, Instance instance2) {
                return instance.getDistanceToGcRoot() - instance2.getDistanceToGcRoot();
            }
        });
        this.mPreviousInstance = null;
        this.mVisitDistance = 0;
    }

    public void doVisit(Iterable<? extends Instance> iterable) {
        Instance instance;
        for (Instance instance2 : iterable) {
            instance2.accept(this);
        }
        while (!this.mPriorityQueue.isEmpty()) {
            instance2 = (Instance) this.mPriorityQueue.poll();
            this.mVisitDistance = instance2.getDistanceToGcRoot() + 1;
            this.mPreviousInstance = instance2;
            instance2.accept(this);
        }
    }

    public void visitLater(Instance instance, Instance instance2) {
        if (this.mVisitDistance >= instance2.getDistanceToGcRoot()) {
            return;
        }
        if (instance == null || instance2.getSoftReferences() == null || !instance2.getSoftReferences().contains(instance) || instance2.getIsSoftReference()) {
            instance2.setDistanceToGcRoot(this.mVisitDistance);
            instance2.setNextInstanceToGcRoot(this.mPreviousInstance);
            this.mPriorityQueue.add(instance2);
        }
    }
}
