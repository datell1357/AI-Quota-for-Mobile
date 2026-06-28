package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ba4 implements pe1 {
    public final /* synthetic */ int n;

    public /* synthetic */ ba4(int i) {
        this.n = i;
    }

    private final Object c(Object obj) throws Exception {
        int i;
        Integer numValueOf;
        jb3 jb3Var = (jb3) obj;
        jb3Var.getClass();
        pb3 pb3VarK0 = jb3Var.k0("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        try {
            pb3VarK0.h(1, 200L);
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
                int i2 = iK13;
                int i3 = iK14;
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
                int i4 = (int) pb3VarK0.getLong(iK10);
                int i5 = iK;
                int i6 = iK2;
                jq jqVarC = ug4.c((int) pb3VarK0.getLong(iK11));
                long j4 = pb3VarK0.getLong(iK12);
                long j5 = pb3VarK0.getLong(i2);
                long j6 = pb3VarK0.getLong(i3);
                int i7 = iK15;
                long j7 = pb3VarK0.getLong(i7);
                iK15 = i7;
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
                int i17 = iK21;
                int i18 = (int) pb3VarK0.getLong(i17);
                iK21 = i17;
                int i19 = iK22;
                int i20 = (int) pb3VarK0.getLong(i19);
                int i21 = iK23;
                Boolean boolValueOf = null;
                String strO4 = pb3VarK0.isNull(i21) ? null : pb3VarK0.o(i21);
                int i22 = iK24;
                if (pb3VarK0.isNull(i22)) {
                    i = i21;
                    iK22 = i19;
                    numValueOf = null;
                } else {
                    i = i21;
                    iK22 = i19;
                    numValueOf = Integer.valueOf((int) pb3VarK0.getLong(i22));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i23 = iK25;
                zl2 zl2VarD = ug4.d((int) pb3VarK0.getLong(i23));
                int i24 = iK26;
                tl2 tl2VarJ = ug4.j(pb3VarK0.getBlob(i24));
                int i25 = iK27;
                boolean z2 = ((int) pb3VarK0.getLong(i25)) != 0;
                int i26 = iK28;
                boolean z3 = ((int) pb3VarK0.getLong(i26)) != 0;
                int i27 = iK29;
                boolean z4 = ((int) pb3VarK0.getLong(i27)) != 0;
                iK29 = i27;
                int i28 = iK30;
                int i29 = iK31;
                int i30 = iK32;
                iK31 = i29;
                int i31 = iK33;
                arrayList.add(new og4(strO, cg4VarF, strO2, strO3, zl0VarS, zl0VarS2, j, j2, j3, new lf0(tl2VarJ, zl2VarD, z2, z3, z4, ((int) pb3VarK0.getLong(i28)) != 0, pb3VarK0.getLong(i29), pb3VarK0.getLong(i30), ug4.a(pb3VarK0.getBlob(i31))), i4, jqVarC, j4, j5, j6, j7, z, jr2VarE, i13, i15, j8, i18, i20, strO4, bool));
                iK28 = i26;
                iK4 = i11;
                iK17 = i10;
                iK18 = i12;
                iK19 = i14;
                iK20 = i16;
                iK23 = i;
                iK24 = i22;
                iK25 = i23;
                iK26 = i24;
                iK27 = i25;
                iK33 = i31;
                iK32 = i30;
                iK30 = i28;
                iK = i5;
                iK3 = i9;
                iK13 = i2;
                iK14 = i3;
                iK2 = i6;
                iK16 = i8;
            }
            pb3VarK0.close();
            return arrayList;
        } catch (Throwable th) {
            pb3VarK0.close();
            throw th;
        }
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        int i;
        int i2;
        Integer numValueOf;
        Boolean boolValueOf;
        Integer numValueOf2;
        Boolean boolValueOf2;
        Integer numValueOf3;
        Boolean boolValueOf3;
        boolean z = false;
        switch (this.n) {
            case 0:
                ye yeVar = (ye) obj;
                return new mn3((((long) Float.floatToRawIntBits(yeVar.a)) << 32) | (((long) Float.floatToRawIntBits(yeVar.b)) & 4294967295L));
            case 1:
                go2 go2Var = (go2) obj;
                return new ye(Float.intBitsToFloat((int) (go2Var.a >> 32)), Float.intBitsToFloat((int) (go2Var.a & 4294967295L)));
            case 2:
                ye yeVar2 = (ye) obj;
                return new go2((((long) Float.floatToRawIntBits(yeVar2.a)) << 32) | (((long) Float.floatToRawIntBits(yeVar2.b)) & 4294967295L));
            case 3:
                long j = ((js1) obj).a;
                return new ye((int) (j >> 32), (int) (j & 4294967295L));
            case 4:
                ye yeVar3 = (ye) obj;
                return new js1((((long) Math.round(yeVar3.a)) << 32) | (((long) Math.round(yeVar3.b)) & 4294967295L));
            case 5:
                long j2 = ((rs1) obj).a;
                return new ye((int) (j2 >> 32), (int) (j2 & 4294967295L));
            case 6:
                ye yeVar4 = (ye) obj;
                int iRound = Math.round(yeVar4.a);
                if (iRound < 0) {
                    iRound = 0;
                }
                int iRound2 = Math.round(yeVar4.b);
                return new rs1((((long) iRound) << 32) | (((long) (iRound2 < 0 ? 0 : iRound2)) & 4294967295L));
            case 7:
                l33 l33Var = (l33) obj;
                return new af(l33Var.a, l33Var.b, l33Var.c, l33Var.d);
            case 8:
                af afVar = (af) obj;
                return new l33(afVar.a, afVar.b, afVar.c, afVar.d);
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return Float.valueOf(((xe) obj).a);
            case 10:
                bf4 bf4Var = (bf4) obj;
                bf4Var.getClass();
                return bf4Var;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                bf0 bf0Var = (bf0) obj;
                bf0Var.getClass();
                return bf0Var.getClass().getSimpleName();
            case 12:
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                pb3 pb3VarK0 = jb3Var.k0("DELETE FROM WorkProgress");
                try {
                    pb3VarK0.c0();
                    pb3VarK0.close();
                    return t64.a;
                } finally {
                }
            case 13:
                jb3 jb3Var2 = (jb3) obj;
                jb3Var2.getClass();
                pb3 pb3VarK02 = jb3Var2.k0("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
                try {
                    int iK = qj0.K(pb3VarK02, "id");
                    int iK2 = qj0.K(pb3VarK02, "state");
                    int iK3 = qj0.K(pb3VarK02, "worker_class_name");
                    int iK4 = qj0.K(pb3VarK02, "input_merger_class_name");
                    int iK5 = qj0.K(pb3VarK02, "input");
                    int iK6 = qj0.K(pb3VarK02, "output");
                    int iK7 = qj0.K(pb3VarK02, "initial_delay");
                    int iK8 = qj0.K(pb3VarK02, "interval_duration");
                    int iK9 = qj0.K(pb3VarK02, "flex_duration");
                    int iK10 = qj0.K(pb3VarK02, "run_attempt_count");
                    int iK11 = qj0.K(pb3VarK02, "backoff_policy");
                    int iK12 = qj0.K(pb3VarK02, "backoff_delay_duration");
                    int iK13 = qj0.K(pb3VarK02, "last_enqueue_time");
                    int iK14 = qj0.K(pb3VarK02, "minimum_retention_duration");
                    int iK15 = qj0.K(pb3VarK02, "schedule_requested_at");
                    int iK16 = qj0.K(pb3VarK02, "run_in_foreground");
                    int iK17 = qj0.K(pb3VarK02, "out_of_quota_policy");
                    int iK18 = qj0.K(pb3VarK02, "period_count");
                    int iK19 = qj0.K(pb3VarK02, "generation");
                    int iK20 = qj0.K(pb3VarK02, "next_schedule_time_override");
                    int iK21 = qj0.K(pb3VarK02, "next_schedule_time_override_generation");
                    int iK22 = qj0.K(pb3VarK02, "stop_reason");
                    int iK23 = qj0.K(pb3VarK02, "trace_tag");
                    int iK24 = qj0.K(pb3VarK02, "backoff_on_system_interruptions");
                    int iK25 = qj0.K(pb3VarK02, "required_network_type");
                    int iK26 = qj0.K(pb3VarK02, "required_network_request");
                    int iK27 = qj0.K(pb3VarK02, "requires_charging");
                    int iK28 = qj0.K(pb3VarK02, "requires_device_idle");
                    int iK29 = qj0.K(pb3VarK02, "requires_battery_not_low");
                    int iK30 = qj0.K(pb3VarK02, "requires_storage_not_low");
                    int iK31 = qj0.K(pb3VarK02, "trigger_content_update_delay");
                    int iK32 = qj0.K(pb3VarK02, "trigger_max_content_delay");
                    int iK33 = qj0.K(pb3VarK02, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (pb3VarK02.c0()) {
                        String strO = pb3VarK02.o(iK);
                        int i3 = iK14;
                        int i4 = iK13;
                        cg4 cg4VarF = ug4.f((int) pb3VarK02.getLong(iK2));
                        String strO2 = pb3VarK02.o(iK3);
                        String strO3 = pb3VarK02.o(iK4);
                        byte[] blob = pb3VarK02.getBlob(iK5);
                        zl0 zl0Var = zl0.b;
                        zl0 zl0VarS = bi4.s(blob);
                        zl0 zl0VarS2 = bi4.s(pb3VarK02.getBlob(iK6));
                        long j3 = pb3VarK02.getLong(iK7);
                        long j4 = pb3VarK02.getLong(iK8);
                        long j5 = pb3VarK02.getLong(iK9);
                        int i5 = (int) pb3VarK02.getLong(iK10);
                        int i6 = iK3;
                        int i7 = iK2;
                        jq jqVarC = ug4.c((int) pb3VarK02.getLong(iK11));
                        long j6 = pb3VarK02.getLong(iK12);
                        long j7 = pb3VarK02.getLong(i4);
                        long j8 = pb3VarK02.getLong(i3);
                        int i8 = iK15;
                        long j9 = pb3VarK02.getLong(i8);
                        iK15 = i8;
                        int i9 = iK16;
                        int i10 = iK;
                        boolean z2 = ((int) pb3VarK02.getLong(i9)) != 0;
                        int i11 = iK4;
                        int i12 = iK17;
                        jr2 jr2VarE = ug4.e((int) pb3VarK02.getLong(i12));
                        iK17 = i12;
                        int i13 = iK18;
                        int i14 = (int) pb3VarK02.getLong(i13);
                        iK18 = i13;
                        int i15 = iK19;
                        int i16 = (int) pb3VarK02.getLong(i15);
                        int i17 = iK20;
                        long j10 = pb3VarK02.getLong(i17);
                        int i18 = iK21;
                        int i19 = (int) pb3VarK02.getLong(i18);
                        int i20 = iK22;
                        int i21 = (int) pb3VarK02.getLong(i20);
                        int i22 = iK23;
                        String strO4 = pb3VarK02.isNull(i22) ? null : pb3VarK02.o(i22);
                        int i23 = iK24;
                        if (pb3VarK02.isNull(i23)) {
                            i = i22;
                            i2 = i20;
                            numValueOf = null;
                        } else {
                            i = i22;
                            i2 = i20;
                            numValueOf = Integer.valueOf((int) pb3VarK02.getLong(i23));
                        }
                        if (numValueOf != null) {
                            boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                        } else {
                            boolValueOf = null;
                        }
                        int i24 = iK25;
                        zl2 zl2VarD = ug4.d((int) pb3VarK02.getLong(i24));
                        int i25 = iK26;
                        tl2 tl2VarJ = ug4.j(pb3VarK02.getBlob(i25));
                        int i26 = iK27;
                        boolean z3 = ((int) pb3VarK02.getLong(i26)) != 0;
                        int i27 = iK28;
                        boolean z4 = ((int) pb3VarK02.getLong(i27)) != 0;
                        int i28 = iK29;
                        boolean z5 = ((int) pb3VarK02.getLong(i28)) != 0;
                        iK29 = i28;
                        int i29 = iK30;
                        int i30 = iK31;
                        int i31 = iK32;
                        iK31 = i30;
                        int i32 = iK33;
                        iK33 = i32;
                        arrayList.add(new og4(strO, cg4VarF, strO2, strO3, zl0VarS, zl0VarS2, j3, j4, j5, new lf0(tl2VarJ, zl2VarD, z3, z4, z5, ((int) pb3VarK02.getLong(i29)) != 0, pb3VarK02.getLong(i30), pb3VarK02.getLong(i31), ug4.a(pb3VarK02.getBlob(i32))), i5, jqVarC, j6, j7, j8, j9, z2, jr2VarE, i14, i16, j10, i19, i21, strO4, boolValueOf));
                        iK = i10;
                        iK16 = i9;
                        iK19 = i15;
                        iK21 = i18;
                        iK22 = i2;
                        iK23 = i;
                        iK24 = i23;
                        iK25 = i24;
                        iK26 = i25;
                        iK32 = i31;
                        iK30 = i29;
                        iK2 = i7;
                        iK4 = i11;
                        iK20 = i17;
                        iK27 = i26;
                        iK13 = i4;
                        iK3 = i6;
                        iK28 = i27;
                        iK14 = i3;
                        break;
                    }
                    return arrayList;
                } finally {
                }
            case 14:
                jb3 jb3Var3 = (jb3) obj;
                jb3Var3.getClass();
                pb3 pb3VarK03 = jb3Var3.k0("SELECT * FROM workspec WHERE state=1");
                try {
                    int iK34 = qj0.K(pb3VarK03, "id");
                    int iK35 = qj0.K(pb3VarK03, "state");
                    int iK36 = qj0.K(pb3VarK03, "worker_class_name");
                    int iK37 = qj0.K(pb3VarK03, "input_merger_class_name");
                    int iK38 = qj0.K(pb3VarK03, "input");
                    int iK39 = qj0.K(pb3VarK03, "output");
                    int iK40 = qj0.K(pb3VarK03, "initial_delay");
                    int iK41 = qj0.K(pb3VarK03, "interval_duration");
                    int iK42 = qj0.K(pb3VarK03, "flex_duration");
                    int iK43 = qj0.K(pb3VarK03, "run_attempt_count");
                    int iK44 = qj0.K(pb3VarK03, "backoff_policy");
                    int iK45 = qj0.K(pb3VarK03, "backoff_delay_duration");
                    int iK46 = qj0.K(pb3VarK03, "last_enqueue_time");
                    int iK47 = qj0.K(pb3VarK03, "minimum_retention_duration");
                    int iK48 = qj0.K(pb3VarK03, "schedule_requested_at");
                    int iK49 = qj0.K(pb3VarK03, "run_in_foreground");
                    int iK50 = qj0.K(pb3VarK03, "out_of_quota_policy");
                    int iK51 = qj0.K(pb3VarK03, "period_count");
                    int iK52 = qj0.K(pb3VarK03, "generation");
                    int iK53 = qj0.K(pb3VarK03, "next_schedule_time_override");
                    int iK54 = qj0.K(pb3VarK03, "next_schedule_time_override_generation");
                    int iK55 = qj0.K(pb3VarK03, "stop_reason");
                    int iK56 = qj0.K(pb3VarK03, "trace_tag");
                    int iK57 = qj0.K(pb3VarK03, "backoff_on_system_interruptions");
                    int iK58 = qj0.K(pb3VarK03, "required_network_type");
                    int iK59 = qj0.K(pb3VarK03, "required_network_request");
                    int iK60 = qj0.K(pb3VarK03, "requires_charging");
                    int iK61 = qj0.K(pb3VarK03, "requires_device_idle");
                    int iK62 = qj0.K(pb3VarK03, "requires_battery_not_low");
                    int iK63 = qj0.K(pb3VarK03, "requires_storage_not_low");
                    int iK64 = qj0.K(pb3VarK03, "trigger_content_update_delay");
                    int iK65 = qj0.K(pb3VarK03, "trigger_max_content_delay");
                    int iK66 = qj0.K(pb3VarK03, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (pb3VarK03.c0()) {
                        String strO5 = pb3VarK03.o(iK34);
                        int i33 = iK47;
                        int i34 = iK46;
                        cg4 cg4VarF2 = ug4.f((int) pb3VarK03.getLong(iK35));
                        String strO6 = pb3VarK03.o(iK36);
                        String strO7 = pb3VarK03.o(iK37);
                        byte[] blob2 = pb3VarK03.getBlob(iK38);
                        zl0 zl0Var2 = zl0.b;
                        zl0 zl0VarS3 = bi4.s(blob2);
                        zl0 zl0VarS4 = bi4.s(pb3VarK03.getBlob(iK39));
                        long j11 = pb3VarK03.getLong(iK40);
                        long j12 = pb3VarK03.getLong(iK41);
                        long j13 = pb3VarK03.getLong(iK42);
                        int i35 = (int) pb3VarK03.getLong(iK43);
                        int i36 = iK36;
                        int i37 = iK35;
                        jq jqVarC2 = ug4.c((int) pb3VarK03.getLong(iK44));
                        long j14 = pb3VarK03.getLong(iK45);
                        long j15 = pb3VarK03.getLong(i34);
                        long j16 = pb3VarK03.getLong(i33);
                        int i38 = iK48;
                        long j17 = pb3VarK03.getLong(i38);
                        int i39 = iK34;
                        int i40 = iK49;
                        boolean z6 = ((int) pb3VarK03.getLong(i40)) != 0;
                        int i41 = iK37;
                        int i42 = iK50;
                        jr2 jr2VarE2 = ug4.e((int) pb3VarK03.getLong(i42));
                        int i43 = iK51;
                        int i44 = (int) pb3VarK03.getLong(i43);
                        int i45 = iK52;
                        int i46 = (int) pb3VarK03.getLong(i45);
                        long j18 = pb3VarK03.getLong(iK53);
                        int i47 = iK54;
                        int i48 = (int) pb3VarK03.getLong(i47);
                        iK54 = i47;
                        int i49 = iK55;
                        int i50 = (int) pb3VarK03.getLong(i49);
                        int i51 = iK56;
                        String strO8 = pb3VarK03.isNull(i51) ? null : pb3VarK03.o(i51);
                        int i52 = iK57;
                        if (pb3VarK03.isNull(i52)) {
                            iK56 = i51;
                            iK55 = i49;
                            numValueOf2 = null;
                        } else {
                            iK56 = i51;
                            iK55 = i49;
                            numValueOf2 = Integer.valueOf((int) pb3VarK03.getLong(i52));
                        }
                        if (numValueOf2 != null) {
                            boolValueOf2 = Boolean.valueOf(numValueOf2.intValue() != 0);
                        } else {
                            boolValueOf2 = null;
                        }
                        int i53 = iK58;
                        zl2 zl2VarD2 = ug4.d((int) pb3VarK03.getLong(i53));
                        int i54 = iK59;
                        tl2 tl2VarJ2 = ug4.j(pb3VarK03.getBlob(i54));
                        iK57 = i52;
                        iK58 = i53;
                        int i55 = iK60;
                        boolean z7 = ((int) pb3VarK03.getLong(i55)) != 0;
                        int i56 = iK61;
                        boolean z8 = ((int) pb3VarK03.getLong(i56)) != 0;
                        iK60 = i55;
                        int i57 = iK62;
                        boolean z9 = ((int) pb3VarK03.getLong(i57)) != 0;
                        iK61 = i56;
                        iK62 = i57;
                        int i58 = iK63;
                        int i59 = iK64;
                        int i60 = iK65;
                        int i61 = iK66;
                        iK64 = i59;
                        arrayList2.add(new og4(strO5, cg4VarF2, strO6, strO7, zl0VarS3, zl0VarS4, j11, j12, j13, new lf0(tl2VarJ2, zl2VarD2, z7, z8, z9, ((int) pb3VarK03.getLong(i58)) != 0, pb3VarK03.getLong(i59), pb3VarK03.getLong(i60), ug4.a(pb3VarK03.getBlob(i61))), i35, jqVarC2, j14, j15, j16, j17, z6, jr2VarE2, i44, i46, j18, i48, i50, strO8, boolValueOf2));
                        iK65 = i60;
                        iK63 = i58;
                        iK66 = i61;
                        iK47 = i33;
                        iK35 = i37;
                        iK36 = i36;
                        iK37 = i41;
                        iK49 = i40;
                        iK50 = i42;
                        iK51 = i43;
                        iK52 = i45;
                        iK59 = i54;
                        iK34 = i39;
                        iK48 = i38;
                        iK46 = i34;
                        break;
                    }
                    return arrayList2;
                } finally {
                }
            case 15:
                jb3 jb3Var4 = (jb3) obj;
                jb3Var4.getClass();
                pb3 pb3VarK04 = jb3Var4.k0("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
                try {
                    int iK67 = qj0.K(pb3VarK04, "id");
                    int iK68 = qj0.K(pb3VarK04, "state");
                    int iK69 = qj0.K(pb3VarK04, "worker_class_name");
                    int iK70 = qj0.K(pb3VarK04, "input_merger_class_name");
                    int iK71 = qj0.K(pb3VarK04, "input");
                    int iK72 = qj0.K(pb3VarK04, "output");
                    int iK73 = qj0.K(pb3VarK04, "initial_delay");
                    int iK74 = qj0.K(pb3VarK04, "interval_duration");
                    int iK75 = qj0.K(pb3VarK04, "flex_duration");
                    int iK76 = qj0.K(pb3VarK04, "run_attempt_count");
                    int iK77 = qj0.K(pb3VarK04, "backoff_policy");
                    int iK78 = qj0.K(pb3VarK04, "backoff_delay_duration");
                    int iK79 = qj0.K(pb3VarK04, "last_enqueue_time");
                    int iK80 = qj0.K(pb3VarK04, "minimum_retention_duration");
                    int iK81 = qj0.K(pb3VarK04, "schedule_requested_at");
                    int iK82 = qj0.K(pb3VarK04, "run_in_foreground");
                    int iK83 = qj0.K(pb3VarK04, "out_of_quota_policy");
                    int iK84 = qj0.K(pb3VarK04, "period_count");
                    int iK85 = qj0.K(pb3VarK04, "generation");
                    int iK86 = qj0.K(pb3VarK04, "next_schedule_time_override");
                    int iK87 = qj0.K(pb3VarK04, "next_schedule_time_override_generation");
                    int iK88 = qj0.K(pb3VarK04, "stop_reason");
                    int iK89 = qj0.K(pb3VarK04, "trace_tag");
                    int iK90 = qj0.K(pb3VarK04, "backoff_on_system_interruptions");
                    int iK91 = qj0.K(pb3VarK04, "required_network_type");
                    int iK92 = qj0.K(pb3VarK04, "required_network_request");
                    int iK93 = qj0.K(pb3VarK04, "requires_charging");
                    int iK94 = qj0.K(pb3VarK04, "requires_device_idle");
                    int iK95 = qj0.K(pb3VarK04, "requires_battery_not_low");
                    int iK96 = qj0.K(pb3VarK04, "requires_storage_not_low");
                    int iK97 = qj0.K(pb3VarK04, "trigger_content_update_delay");
                    int iK98 = qj0.K(pb3VarK04, "trigger_max_content_delay");
                    int iK99 = qj0.K(pb3VarK04, "content_uri_triggers");
                    ArrayList arrayList3 = new ArrayList();
                    while (pb3VarK04.c0()) {
                        String strO9 = pb3VarK04.o(iK67);
                        int i62 = iK80;
                        int i63 = iK79;
                        cg4 cg4VarF3 = ug4.f((int) pb3VarK04.getLong(iK68));
                        String strO10 = pb3VarK04.o(iK69);
                        String strO11 = pb3VarK04.o(iK70);
                        byte[] blob3 = pb3VarK04.getBlob(iK71);
                        zl0 zl0Var3 = zl0.b;
                        zl0 zl0VarS5 = bi4.s(blob3);
                        zl0 zl0VarS6 = bi4.s(pb3VarK04.getBlob(iK72));
                        long j19 = pb3VarK04.getLong(iK73);
                        long j20 = pb3VarK04.getLong(iK74);
                        long j21 = pb3VarK04.getLong(iK75);
                        int i64 = (int) pb3VarK04.getLong(iK76);
                        int i65 = iK69;
                        int i66 = iK68;
                        jq jqVarC3 = ug4.c((int) pb3VarK04.getLong(iK77));
                        long j22 = pb3VarK04.getLong(iK78);
                        long j23 = pb3VarK04.getLong(i63);
                        long j24 = pb3VarK04.getLong(i62);
                        int i67 = iK81;
                        long j25 = pb3VarK04.getLong(i67);
                        int i68 = iK67;
                        int i69 = iK82;
                        boolean z10 = ((int) pb3VarK04.getLong(i69)) != 0;
                        int i70 = iK70;
                        int i71 = iK83;
                        jr2 jr2VarE3 = ug4.e((int) pb3VarK04.getLong(i71));
                        int i72 = iK84;
                        int i73 = (int) pb3VarK04.getLong(i72);
                        int i74 = iK85;
                        int i75 = (int) pb3VarK04.getLong(i74);
                        long j26 = pb3VarK04.getLong(iK86);
                        int i76 = iK87;
                        int i77 = (int) pb3VarK04.getLong(i76);
                        iK87 = i76;
                        int i78 = iK88;
                        int i79 = (int) pb3VarK04.getLong(i78);
                        int i80 = iK89;
                        String strO12 = pb3VarK04.isNull(i80) ? null : pb3VarK04.o(i80);
                        int i81 = iK90;
                        if (pb3VarK04.isNull(i81)) {
                            iK89 = i80;
                            iK88 = i78;
                            numValueOf3 = null;
                        } else {
                            iK89 = i80;
                            iK88 = i78;
                            numValueOf3 = Integer.valueOf((int) pb3VarK04.getLong(i81));
                        }
                        if (numValueOf3 != null) {
                            boolValueOf3 = Boolean.valueOf(numValueOf3.intValue() != 0);
                        } else {
                            boolValueOf3 = null;
                        }
                        int i82 = iK91;
                        zl2 zl2VarD3 = ug4.d((int) pb3VarK04.getLong(i82));
                        int i83 = iK92;
                        tl2 tl2VarJ3 = ug4.j(pb3VarK04.getBlob(i83));
                        iK90 = i81;
                        iK91 = i82;
                        int i84 = iK93;
                        boolean z11 = ((int) pb3VarK04.getLong(i84)) != 0;
                        int i85 = iK94;
                        boolean z12 = ((int) pb3VarK04.getLong(i85)) != 0;
                        iK93 = i84;
                        int i86 = iK95;
                        boolean z13 = ((int) pb3VarK04.getLong(i86)) != 0;
                        iK94 = i85;
                        iK95 = i86;
                        int i87 = iK96;
                        int i88 = iK97;
                        int i89 = iK98;
                        int i90 = iK99;
                        iK97 = i88;
                        arrayList3.add(new og4(strO9, cg4VarF3, strO10, strO11, zl0VarS5, zl0VarS6, j19, j20, j21, new lf0(tl2VarJ3, zl2VarD3, z11, z12, z13, ((int) pb3VarK04.getLong(i87)) != 0, pb3VarK04.getLong(i88), pb3VarK04.getLong(i89), ug4.a(pb3VarK04.getBlob(i90))), i64, jqVarC3, j22, j23, j24, j25, z10, jr2VarE3, i73, i75, j26, i77, i79, strO12, boolValueOf3));
                        iK98 = i89;
                        iK96 = i87;
                        iK99 = i90;
                        iK80 = i62;
                        iK68 = i66;
                        iK69 = i65;
                        iK70 = i70;
                        iK82 = i69;
                        iK83 = i71;
                        iK84 = i72;
                        iK85 = i74;
                        iK92 = i83;
                        iK67 = i68;
                        iK81 = i67;
                        iK79 = i63;
                        break;
                    }
                    return arrayList3;
                } finally {
                }
            case 16:
                jb3 jb3Var5 = (jb3) obj;
                jb3Var5.getClass();
                pb3 pb3VarK05 = jb3Var5.k0("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
                try {
                    int i91 = pb3VarK05.c0() ? (int) pb3VarK05.getLong(0) : 0;
                    pb3VarK05.close();
                    return Integer.valueOf(i91);
                } finally {
                }
            case 17:
                jb3 jb3Var6 = (jb3) obj;
                jb3Var6.getClass();
                pb3 pb3VarK06 = jb3Var6.k0("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
                try {
                    if (pb3VarK06.c0()) {
                        z = ((int) pb3VarK06.getLong(0)) != 0;
                    }
                    pb3VarK06.close();
                    return Boolean.valueOf(z);
                } finally {
                }
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return c(obj);
            case 19:
                jb3 jb3Var7 = (jb3) obj;
                jb3Var7.getClass();
                pb3 pb3VarK07 = jb3Var7.k0("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    pb3VarK07.c0();
                    int iT = se0.t(jb3Var7);
                    pb3VarK07.close();
                    return Integer.valueOf(iT);
                } finally {
                }
            default:
                ((wh4) obj).getClass();
                return Boolean.TRUE;
        }
    }
}
