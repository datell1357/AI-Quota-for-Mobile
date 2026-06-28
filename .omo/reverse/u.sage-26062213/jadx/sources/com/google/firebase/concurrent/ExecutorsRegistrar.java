package com.google.firebase.concurrent;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.a32;
import defpackage.ea0;
import defpackage.fq;
import defpackage.gg4;
import defpackage.h90;
import defpackage.i64;
import defpackage.i90;
import defpackage.mk0;
import defpackage.rw;
import defpackage.rz1;
import defpackage.z03;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {
    public static final rz1 a = new rz1(new ea0(1));
    public static final rz1 b = new rz1(new ea0(2));
    public static final rz1 c = new rz1(new ea0(3));
    public static final rz1 d = new rz1(new ea0(4));

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        z03 z03Var = new z03(fq.class, ScheduledExecutorService.class);
        z03[] z03VarArr = {new z03(fq.class, ExecutorService.class), new z03(fq.class, Executor.class)};
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(z03Var);
        for (z03 z03Var2 : z03VarArr) {
            gg4.m(z03Var2, "Null interface");
        }
        Collections.addAll(hashSet, z03VarArr);
        i90 i90Var = new i90(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new mk0(19), hashSet3);
        z03 z03Var3 = new z03(rw.class, ScheduledExecutorService.class);
        z03[] z03VarArr2 = {new z03(rw.class, ExecutorService.class), new z03(rw.class, Executor.class)};
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        hashSet4.add(z03Var3);
        for (z03 z03Var4 : z03VarArr2) {
            gg4.m(z03Var4, "Null interface");
        }
        Collections.addAll(hashSet4, z03VarArr2);
        i90 i90Var2 = new i90(null, new HashSet(hashSet4), new HashSet(hashSet5), 0, 0, new mk0(20), hashSet6);
        z03 z03Var5 = new z03(a32.class, ScheduledExecutorService.class);
        z03[] z03VarArr3 = {new z03(a32.class, ExecutorService.class), new z03(a32.class, Executor.class)};
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        hashSet7.add(z03Var5);
        for (z03 z03Var6 : z03VarArr3) {
            gg4.m(z03Var6, "Null interface");
        }
        Collections.addAll(hashSet7, z03VarArr3);
        i90 i90Var3 = new i90(null, new HashSet(hashSet7), new HashSet(hashSet8), 0, 0, new mk0(21), hashSet9);
        h90 h90VarA = i90.a(new z03(i64.class, Executor.class));
        h90VarA.f = new mk0(22);
        return Arrays.asList(i90Var, i90Var2, i90Var3, h90VarA.b());
    }
}
