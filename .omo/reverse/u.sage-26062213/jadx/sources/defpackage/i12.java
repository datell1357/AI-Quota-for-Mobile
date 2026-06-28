package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i12 implements pe1 {
    public final /* synthetic */ int n = 1;
    public final /* synthetic */ int o;

    public /* synthetic */ i12(int i) {
        this.o = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        pb3 pb3Var;
        int i;
        int i2;
        Integer numValueOf;
        Boolean boolValueOf;
        switch (this.n) {
            case 0:
                l02 l02Var = (l02) obj;
                po3 po3VarX = k75.x();
                k75.L(po3VarX, k75.E(po3VarX), po3VarX != null ? po3VarX.e() : null);
                l02Var.getClass();
                return t64.a;
            default:
                int i3 = this.o;
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                pb3 pb3VarK0 = jb3Var.k0("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                try {
                    pb3VarK0.h(1, i3);
                    int iK = qj0.K(pb3VarK0, "id");
                    int iK2 = qj0.K(pb3VarK0, "state");
                    int iK3 = qj0.K(pb3VarK0, "worker_class_name");
                    int iK4 = qj0.K(pb3VarK0, "input_merger_class_name");
                    int iK5 = qj0.K(pb3VarK0, "input");
                    int iK6 = qj0.K(pb3VarK0, "output");
                    int iK7 = qj0.K(pb3VarK0, "initial_delay");
                    int iK8 = qj0.K(pb3VarK0, "interval_duration");
                    int iK9 = qj0.K(pb3VarK0, "flex_duration");
                    int iK10 = qj0.K(pb3VarK0, "run_attempt_count");
                    int iK11 = qj0.K(pb3VarK0, "backoff_policy");
                    int iK12 = qj0.K(pb3VarK0, "backoff_delay_duration");
                    int iK13 = qj0.K(pb3VarK0, "last_enqueue_time");
                    int iK14 = qj0.K(pb3VarK0, "minimum_retention_duration");
                    int iK15 = qj0.K(pb3VarK0, "schedule_requested_at");
                    int iK16 = qj0.K(pb3VarK0, "run_in_foreground");
                    int iK17 = qj0.K(pb3VarK0, "out_of_quota_policy");
                    int iK18 = qj0.K(pb3VarK0, "period_count");
                    int iK19 = qj0.K(pb3VarK0, "generation");
                    int iK20 = qj0.K(pb3VarK0, "next_schedule_time_override");
                    int iK21 = qj0.K(pb3VarK0, "next_schedule_time_override_generation");
                    int iK22 = qj0.K(pb3VarK0, "stop_reason");
                    int iK23 = qj0.K(pb3VarK0, "trace_tag");
                    int iK24 = qj0.K(pb3VarK0, "backoff_on_system_interruptions");
                    int iK25 = qj0.K(pb3VarK0, "required_network_type");
                    int iK26 = qj0.K(pb3VarK0, "required_network_request");
                    int iK27 = qj0.K(pb3VarK0, "requires_charging");
                    int iK28 = qj0.K(pb3VarK0, "requires_device_idle");
                    int iK29 = qj0.K(pb3VarK0, "requires_battery_not_low");
                    int iK30 = qj0.K(pb3VarK0, "requires_storage_not_low");
                    int iK31 = qj0.K(pb3VarK0, "trigger_content_update_delay");
                    int iK32 = qj0.K(pb3VarK0, "trigger_max_content_delay");
                    int iK33 = qj0.K(pb3VarK0, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (pb3VarK0.c0()) {
                        String strO = pb3VarK0.o(iK);
                        ArrayList arrayList2 = arrayList;
                        int i4 = iK;
                        cg4 cg4VarF = ug4.f((int) pb3VarK0.getLong(iK2));
                        String strO2 = pb3VarK0.o(iK3);
                        String strO3 = pb3VarK0.o(iK4);
                        byte[] blob = pb3VarK0.getBlob(iK5);
                        zl0 zl0Var = zl0.b;
                        zl0 zl0VarS = bi4.s(blob);
                        zl0 zl0VarS2 = bi4.s(pb3VarK0.getBlob(iK6));
                        long j = pb3VarK0.getLong(iK7);
                        long j2 = pb3VarK0.getLong(iK8);
                        long j3 = pb3VarK0.getLong(iK9);
                        int i5 = (int) pb3VarK0.getLong(iK10);
                        jq jqVarC = ug4.c((int) pb3VarK0.getLong(iK11));
                        long j4 = pb3VarK0.getLong(iK12);
                        long j5 = pb3VarK0.getLong(iK13);
                        long j6 = pb3VarK0.getLong(iK14);
                        int i6 = iK15;
                        long j7 = pb3VarK0.getLong(i6);
                        int i7 = iK2;
                        int i8 = iK16;
                        int i9 = iK3;
                        boolean z = ((int) pb3VarK0.getLong(i8)) != 0;
                        int i10 = iK17;
                        int i11 = iK4;
                        jr2 jr2VarE = ug4.e((int) pb3VarK0.getLong(i10));
                        int i12 = iK18;
                        int i13 = (int) pb3VarK0.getLong(i12);
                        int i14 = iK19;
                        int i15 = (int) pb3VarK0.getLong(i14);
                        int i16 = iK20;
                        long j8 = pb3VarK0.getLong(i16);
                        int i17 = iK14;
                        int i18 = iK21;
                        int i19 = (int) pb3VarK0.getLong(i18);
                        int i20 = iK22;
                        int i21 = (int) pb3VarK0.getLong(i20);
                        int i22 = iK23;
                        String strO4 = pb3VarK0.isNull(i22) ? null : pb3VarK0.o(i22);
                        int i23 = iK24;
                        if (pb3VarK0.isNull(i23)) {
                            i = i19;
                            i2 = i20;
                            numValueOf = null;
                        } else {
                            i = i19;
                            i2 = i20;
                            numValueOf = Integer.valueOf((int) pb3VarK0.getLong(i23));
                        }
                        if (numValueOf != null) {
                            boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        } else {
                            boolValueOf = null;
                        }
                        int i24 = iK25;
                        zl2 zl2VarD = ug4.d((int) pb3VarK0.getLong(i24));
                        int i25 = iK26;
                        tl2 tl2VarJ = ug4.j(pb3VarK0.getBlob(i25));
                        iK25 = i24;
                        iK26 = i25;
                        int i26 = iK27;
                        boolean z2 = ((int) pb3VarK0.getLong(i26)) != 0;
                        iK27 = i26;
                        int i27 = iK28;
                        boolean z3 = ((int) pb3VarK0.getLong(i27)) != 0;
                        int i28 = iK29;
                        boolean z4 = ((int) pb3VarK0.getLong(i28)) != 0;
                        iK29 = i28;
                        int i29 = iK30;
                        int i30 = iK31;
                        int i31 = iK32;
                        int i32 = iK33;
                        iK33 = i32;
                        pb3Var = pb3VarK0;
                        try {
                            arrayList2.add(new og4(strO, cg4VarF, strO2, strO3, zl0VarS, zl0VarS2, j, j2, j3, new lf0(tl2VarJ, zl2VarD, z2, z3, z4, ((int) pb3VarK0.getLong(i29)) != 0, pb3VarK0.getLong(i30), pb3VarK0.getLong(i31), ug4.a(pb3VarK0.getBlob(i32))), i5, jqVarC, j4, j5, j6, j7, z, jr2VarE, i13, i15, j8, i, i21, strO4, boolValueOf));
                            arrayList = arrayList2;
                            pb3VarK0 = pb3Var;
                            iK31 = i30;
                            iK32 = i31;
                            iK14 = i17;
                            iK20 = i16;
                            iK22 = i2;
                            iK24 = i23;
                            iK = i4;
                            iK30 = i29;
                            iK2 = i7;
                            iK15 = i6;
                            iK4 = i11;
                            iK17 = i10;
                            iK19 = i14;
                            iK21 = i18;
                            iK23 = i22;
                            iK28 = i27;
                            iK3 = i9;
                            iK16 = i8;
                            iK18 = i12;
                        } catch (Throwable th) {
                            th = th;
                            pb3Var.close();
                            throw th;
                        }
                        break;
                    }
                    pb3 pb3Var2 = pb3VarK0;
                    ArrayList arrayList3 = arrayList;
                    pb3Var2.close();
                    return arrayList3;
                } catch (Throwable th2) {
                    th = th2;
                    pb3Var = pb3VarK0;
                }
                break;
        }
    }

    public /* synthetic */ i12(n12 n12Var, int i) {
        this.o = i;
    }
}
