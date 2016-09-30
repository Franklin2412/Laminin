package com.squareup.haha.perflib;

public interface Visitor {
    void visitArrayInstance(ArrayInstance arrayInstance);

    void visitClassInstance(ClassInstance classInstance);

    void visitClassObj(ClassObj classObj);

    void visitLater(Instance instance, Instance instance2);

    void visitRootObj(RootObj rootObj);
}
