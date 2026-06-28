package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w35 extends ab5 implements bs4 {
    public final di d;
    public final di e;
    public final di f;
    public final di g;
    public final di h;
    public final di i;
    public final di j;
    public final m35 k;
    public final gt4 l;
    public final di m;
    public final di n;
    public final di o;

    public w35(pb5 pb5Var) {
        super(pb5Var);
        this.d = new di(0);
        this.e = new di(0);
        this.f = new di(0);
        this.g = new di(0);
        this.h = new di(0);
        this.i = new di(0);
        this.m = new di(0);
        this.n = new di(0);
        this.o = new di(0);
        this.j = new di(0);
        this.k = new m35(this);
        this.l = new gt4(3, this);
    }

    public static final di F(n15 n15Var) {
        di diVar = new di(0);
        for (z15 z15Var : n15Var.x()) {
            diVar.put(z15Var.t(), z15Var.u());
        }
        return diVar;
    }

    public static final x55 G(int i) {
        int i2 = i - 1;
        if (i2 == 1) {
            return x55.AD_STORAGE;
        }
        if (i2 == 2) {
            return x55.ANALYTICS_STORAGE;
        }
        if (i2 == 3) {
            return x55.AD_USER_DATA;
        }
        if (i2 != 4) {
            return null;
        }
        return x55.AD_PERSONALIZATION;
    }

    public final boolean A(String str) {
        v();
        B(str);
        x05 x05VarR = R(str);
        if (x05VarR == null) {
            return false;
        }
        for (a05 a05Var : x05VarR.t()) {
            if (a05Var.t() == 3 && a05Var.v() == 3) {
                return true;
            }
        }
        return false;
    }

    public final void B(String str) {
        w();
        v();
        Preconditions.checkNotEmpty(str);
        di diVar = this.i;
        if (diVar.get(str) == null) {
            at4 at4Var = this.b.c;
            pb5.T(at4Var);
            ui3 ui3VarD0 = at4Var.D0(str);
            di diVar2 = this.o;
            di diVar3 = this.n;
            di diVar4 = this.m;
            di diVar5 = this.d;
            if (ui3VarD0 != null) {
                j15 j15Var = (j15) E(str, (byte[]) ui3VarD0.o).k();
                C(str, j15Var);
                diVar5.put(str, F((n15) j15Var.d()));
                diVar.put(str, (n15) j15Var.d());
                D(str, (n15) j15Var.d());
                diVar4.put(str, ((n15) j15Var.o).E());
                diVar3.put(str, (String) ui3VarD0.p);
                diVar2.put(str, (String) ui3VarD0.q);
                return;
            }
            diVar5.put(str, null);
            this.f.put(str, null);
            this.e.put(str, null);
            this.g.put(str, null);
            this.h.put(str, null);
            diVar.put(str, null);
            diVar4.put(str, null);
            diVar3.put(str, null);
            diVar2.put(str, null);
            this.j.put(str, null);
        }
    }

    public final void C(String str, j15 j15Var) {
        ArrayList arrayList;
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        di diVar = new di(0);
        di diVar2 = new di(0);
        di diVar3 = new di(0);
        Iterator it = Collections.unmodifiableList(((n15) j15Var.o).D()).iterator();
        while (it.hasNext()) {
            hashSet.add(((c15) it.next()).t());
        }
        r45 r45Var = (r45) this.a;
        ds4 ds4Var = r45Var.d;
        a25 a25Var = r45Var.f;
        d05 d05Var = e05.V0;
        if (ds4Var.G(null, d05Var)) {
            arrayList2.addAll(Collections.unmodifiableList(((n15) j15Var.o).J()));
        }
        while (i < ((n15) j15Var.o).y()) {
            f15 f15Var = (f15) ((n15) j15Var.o).z(i).k();
            if (f15Var.g().isEmpty()) {
                r45.l(a25Var);
                a25Var.i.a("EventConfig contained null event name");
                arrayList = arrayList2;
            } else {
                String strG = f15Var.g();
                arrayList = arrayList2;
                String strE = vm4.e(f15Var.g(), ca.g, ca.l);
                if (!TextUtils.isEmpty(strE)) {
                    f15Var.b();
                    ((i15) f15Var.o).A(strE);
                    j15Var.b();
                    ((n15) j15Var.o).M(i, (i15) f15Var.d());
                }
                if (((i15) f15Var.o).u() && ((i15) f15Var.o).v()) {
                    diVar.put(strG, Boolean.TRUE);
                }
                if (((i15) f15Var.o).w() && ((i15) f15Var.o).x()) {
                    diVar2.put(f15Var.g(), Boolean.TRUE);
                }
                if (((i15) f15Var.o).y()) {
                    if (((i15) f15Var.o).z() < 2 || ((i15) f15Var.o).z() > 65535) {
                        r45.l(a25Var);
                        a25Var.i.c(f15Var.g(), Integer.valueOf(((i15) f15Var.o).z()), "Invalid sampling rate. Event name, sample rate");
                    } else {
                        diVar3.put(f15Var.g(), Integer.valueOf(((i15) f15Var.o).z()));
                    }
                }
            }
            i++;
            arrayList2 = arrayList;
        }
        ArrayList arrayList3 = arrayList2;
        this.e.put(str, hashSet);
        if (r45Var.d.G(null, d05Var)) {
            this.h.put(str, arrayList3);
        }
        this.f.put(str, diVar);
        this.g.put(str, diVar2);
        this.j.put(str, diVar3);
    }

    public final void D(String str, n15 n15Var) {
        r45 r45Var = (r45) this.a;
        int iC = n15Var.C();
        m35 m35Var = this.k;
        if (iC == 0) {
            m35Var.d(str);
            return;
        }
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.n.b(Integer.valueOf(n15Var.C()), "EES programs found");
        int i = 0;
        n55 n55Var = (n55) n15Var.B().get(0);
        try {
            mv4 mv4Var = new mv4();
            qd1 qd1Var = mv4Var.a;
            ((HashMap) ((ra3) qd1Var.r).o).put("internal.remoteConfig", new p35(this, str, 2));
            ((HashMap) ((ra3) qd1Var.r).o).put("internal.appMetadata", new p35(this, str, i));
            ((HashMap) ((ra3) qd1Var.r).o).put("internal.logger", new id2(1, this));
            mv4Var.b(n55Var);
            m35Var.c(str, mv4Var);
            r45.l(a25Var);
            x15 x15Var = a25Var.n;
            x15Var.c(str, Integer.valueOf(n55Var.u().u()), "EES program loaded for appId, activities");
            for (l55 l55Var : n55Var.u().t()) {
                r45.l(a25Var);
                x15Var.b(l55Var.t(), "EES program activity");
            }
        } catch (ax4 unused) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(str, "Failed to load EES program. appId");
        }
    }

    public final n15 E(String str, byte[] bArr) {
        r45 r45Var = (r45) this.a;
        if (bArr == null) {
            return n15.L();
        }
        try {
            n15 n15Var = (n15) ((j15) ub5.g0(n15.K(), bArr)).d();
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.c(n15Var.t() ? Long.valueOf(n15Var.u()) : null, n15Var.v() ? n15Var.w() : null, "Parsed config. version, gmp_app_id");
            return n15Var;
        } catch (fo4 e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.i.c(a25.D(str), e, "Unable to merge remote config. appId");
            return n15.L();
        } catch (RuntimeException e2) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.i.c(a25.D(str), e2, "Unable to merge remote config. appId");
            return n15.L();
        }
    }

    public final n15 H(String str) {
        w();
        v();
        Preconditions.checkNotEmpty(str);
        B(str);
        return (n15) this.i.get(str);
    }

    public final String I(String str) {
        v();
        B(str);
        return (String) this.m.get(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0406, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0407, code lost:
    
        r5.put(r0, r3);
        r28 = r0;
        r5.put("property_name", r6.v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0419, code lost:
    
        if (r6.z() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x041b, code lost:
    
        r3 = java.lang.Boolean.valueOf(r6.A());
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0424, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0425, code lost:
    
        r5.put("session_scoped", r3);
        r5.put("data", r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0437, code lost:
    
        if (r8.m0().insertWithOnConflict("property_filters", null, r5, 5) != (-1)) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0439, code lost:
    
        r0 = r13.f;
        defpackage.r45.l(r0);
        r0.f.b(defpackage.a25.D(r30), "Failed to insert property filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x044a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x044c, code lost:
    
        r5 = r23;
        r3 = r26;
        r0 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0454, code lost:
    
        r1 = r13.f;
        defpackage.r45.l(r1);
        r1.f.c(defpackage.a25.D(r30), r0, "Error storing property filter. appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0464, code lost:
    
        r8.w();
        r8.v();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r30);
        r0 = r8.m0();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0487, code lost:
    
        r1 = r24;
        r3 = r25;
        r0 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0625, code lost:
    
        r24.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0628, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0266, code lost:
    
        r0 = r5.v().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0272, code lost:
    
        if (r0.hasNext() == false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x027e, code lost:
    
        if (((defpackage.uz4) r0.next()).t() != false) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0280, code lost:
    
        r0 = r13.f;
        defpackage.r45.l(r0);
        r0.i.c(defpackage.a25.D(r30), java.lang.Integer.valueOf(r7), "Property filter with no ID. Audience definition ignored. appId, audienceId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0295, code lost:
    
        r0 = r5.y().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x029d, code lost:
    
        r14 = r0.hasNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02a1, code lost:
    
        r23 = r0;
        r0 = "filter_id";
        r24 = r1;
        r25 = r3;
        r3 = "app_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x02b3, code lost:
    
        if (r14 == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02b5, code lost:
    
        r14 = (defpackage.kz4) r23.next();
        r8.w();
        r8.v();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r30);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02cf, code lost:
    
        if (r14.v().isEmpty() == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02d1, code lost:
    
        r0 = r13.f;
        defpackage.r45.l(r0);
        r0 = r0.i;
        r3 = defpackage.a25.D(r30);
        r4 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02e6, code lost:
    
        if (r14.t() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02e8, code lost:
    
        r5 = java.lang.Integer.valueOf(r14.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x02f1, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02f4, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02f5, code lost:
    
        r0.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r3, r4, java.lang.String.valueOf(r5));
        r27 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0300, code lost:
    
        r26 = r5;
        r5 = r14.a();
        r27 = r6;
        r6 = new android.content.ContentValues();
        r6.put("app_id", r30);
        r6.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x031b, code lost:
    
        if (r14.t() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x031d, code lost:
    
        r1 = java.lang.Integer.valueOf(r14.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0326, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0327, code lost:
    
        r6.put("filter_id", r1);
        r6.put("event_name", r14.v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0337, code lost:
    
        if (r14.D() == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0339, code lost:
    
        r0 = java.lang.Boolean.valueOf(r14.E());
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0342, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0343, code lost:
    
        r6.put("session_scoped", r0);
        r6.put("data", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0355, code lost:
    
        if (r8.m0().insertWithOnConflict("event_filters", null, r6, 5) != (-1)) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0357, code lost:
    
        r0 = r13.f;
        defpackage.r45.l(r0);
        r0.f.b(defpackage.a25.D(r30), "Failed to insert event filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0368, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x036a, code lost:
    
        r0 = r23;
        r1 = r24;
        r3 = r25;
        r5 = r26;
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0376, code lost:
    
        r1 = r13.f;
        defpackage.r45.l(r1);
        r1.f.c(defpackage.a25.D(r30), r0, "Error storing event filter. appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0388, code lost:
    
        r27 = r6;
        r5 = r5.v().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0398, code lost:
    
        if (r5.hasNext() == false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x039a, code lost:
    
        r6 = (defpackage.uz4) r5.next();
        r8.w();
        r8.v();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r30);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03b4, code lost:
    
        if (r6.v().isEmpty() == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x03b6, code lost:
    
        r0 = r13.f;
        defpackage.r45.l(r0);
        r0 = r0.i;
        r3 = defpackage.a25.D(r30);
        r4 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x03cb, code lost:
    
        if (r6.t() == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x03cd, code lost:
    
        r5 = java.lang.Integer.valueOf(r6.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x03d6, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x03d7, code lost:
    
        r0.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r3, r4, java.lang.String.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x03e0, code lost:
    
        r14 = r6.a();
        r23 = r5;
        r5 = new android.content.ContentValues();
        r5.put(r3, r30);
        r26 = r3;
        r5.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03fb, code lost:
    
        if (r6.t() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x03fd, code lost:
    
        r3 = java.lang.Integer.valueOf(r6.u());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J(java.lang.String r30, byte[] r31, java.lang.String r32, java.lang.String r33) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w35.J(java.lang.String, byte[], java.lang.String, java.lang.String):void");
    }

    public final boolean K(String str, String str2) {
        Boolean bool;
        v();
        B(str);
        if ("1".equals(a(str, "measurement.upload.blacklist_internal")) && ac5.Y(str2)) {
            return true;
        }
        if ("1".equals(a(str, "measurement.upload.blacklist_public")) && ac5.u0(str2)) {
            return true;
        }
        Map map = (Map) this.f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final boolean L(String str, String str2) {
        Boolean bool;
        v();
        B(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final List M(String str) {
        v();
        B(str);
        return (List) this.h.get(str);
    }

    public final int N(String str, String str2) {
        Integer num;
        v();
        B(str);
        Map map = (Map) this.j.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean O(String str) {
        v();
        B(str);
        di diVar = this.e;
        if (diVar.get(str) != null) {
            return ((Set) diVar.get(str)).contains("os_version") || ((Set) diVar.get(str)).contains("device_info");
        }
        return false;
    }

    public final boolean P(String str) {
        v();
        B(str);
        di diVar = this.e;
        return diVar.get(str) != null && ((Set) diVar.get(str)).contains("app_instance_id");
    }

    public final boolean Q(String str, x55 x55Var) {
        v();
        B(str);
        x05 x05VarR = R(str);
        if (x05VarR == null) {
            return false;
        }
        for (a05 a05Var : x05VarR.t()) {
            if (x55Var == G(a05Var.t())) {
                return a05Var.u() == 2;
            }
        }
        return false;
    }

    public final x05 R(String str) {
        v();
        B(str);
        n15 n15VarH = H(str);
        if (n15VarH == null || !n15VarH.F()) {
            return null;
        }
        return n15VarH.G();
    }

    @Override // defpackage.bs4
    public final String a(String str, String str2) {
        v();
        B(str);
        Map map = (Map) this.d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    public final u55 z(String str, x55 x55Var) {
        v();
        B(str);
        x05 x05VarR = R(str);
        if (x05VarR != null) {
            Iterator it = x05VarR.y().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a05 a05Var = (a05) it.next();
                if (G(a05Var.t()) == x55Var) {
                    int iU = a05Var.u() - 1;
                    if (iU == 1) {
                        return u55.GRANTED;
                    }
                    if (iU == 2) {
                        return u55.DENIED;
                    }
                }
            }
        }
        return u55.UNINITIALIZED;
    }

    @Override // defpackage.ab5
    public final void y() {
    }
}
