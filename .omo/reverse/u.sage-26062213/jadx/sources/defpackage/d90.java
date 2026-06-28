package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d90 implements pi {
    public final /* synthetic */ int n;
    public int o;
    public Object p;

    public d90(int i, byte b) {
        this.n = i;
        switch (i) {
            case 10:
                this.p = new LinkedHashMap();
                break;
            default:
                this.o = 1;
                this.p = Collections.singletonList(null);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.d90 r9, defpackage.zn0 r10, defpackage.dr r11) {
        /*
            java.lang.Object r0 = r9.p
            vi2 r0 = (defpackage.vi2) r0
            boolean r1 = r11 instanceof defpackage.zw1
            if (r1 == 0) goto L17
            r1 = r11
            zw1 r1 = (defpackage.zw1) r1
            int r2 = r1.w
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.w = r2
            goto L1c
        L17:
            zw1 r1 = new zw1
            r1.<init>(r9, r11)
        L1c:
            java.lang.Object r11 = r1.f447u
            int r2 = r1.w
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 7
            r7 = 4
            r8 = 1
            if (r2 == 0) goto L5c
            if (r2 != r8) goto L56
            java.lang.String r9 = r1.t
            java.util.LinkedHashMap r10 = r1.s
            d90 r0 = r1.r
            zn0 r2 = r1.q
            defpackage.gg4.T(r11)
            xv1 r11 = (defpackage.xv1) r11
            r10.put(r9, r11)
            java.lang.Object r9 = r0.p
            vi2 r9 = (defpackage.vi2) r9
            byte r9 = r9.e()
            if (r9 == r7) goto L51
            if (r9 != r6) goto L47
            goto L95
        L47:
            java.lang.Object r9 = r0.p
            vi2 r9 = (defpackage.vi2) r9
            java.lang.String r10 = "Expected end of the object or comma"
            defpackage.vi2.l(r9, r10, r3, r4, r5)
            throw r4
        L51:
            r11 = r9
            r9 = r0
            r0 = r10
            r10 = r2
            goto L6e
        L56:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r9)
            return r4
        L5c:
            defpackage.gg4.T(r11)
            byte r11 = r0.f(r5)
            byte r2 = r0.t()
            if (r2 == r7) goto Lad
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
        L6e:
            java.lang.Object r2 = r9.p
            vi2 r2 = (defpackage.vi2) r2
            boolean r3 = r2.b()
            if (r3 == 0) goto L92
            java.lang.String r11 = r2.i()
            r3 = 5
            r2.f(r3)
            r1.q = r10
            r1.r = r9
            r1.s = r0
            r1.t = r11
            r1.w = r8
            r10.getClass()
            r10.o = r1
            ri0 r9 = defpackage.ri0.n
            return r9
        L92:
            r10 = r0
            r0 = r9
            r9 = r11
        L95:
            java.lang.Object r11 = r0.p
            vi2 r11 = (defpackage.vi2) r11
            if (r9 != r5) goto L9f
            r11.f(r6)
            goto La1
        L9f:
            if (r9 == r7) goto La7
        La1:
            ow1 r9 = new ow1
            r9.<init>(r10)
            return r9
        La7:
            java.lang.String r9 = "object"
            defpackage.bi4.z(r11, r9)
            throw r4
        Lad:
            java.lang.String r9 = "Unexpected leading comma"
            defpackage.vi2.l(r0, r9, r3, r4, r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d90.a(d90, zn0, dr):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e6, code lost:
    
        if (r9.size() <= 0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e8, code lost:
    
        r0 = new defpackage.xh1();
        r1 = r9.size();
        r0.n = new int[r1];
        r0.o = new float[r1];
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01fa, code lost:
    
        if (r2 >= r1) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fc, code lost:
    
        ((int[]) r0.n)[r2] = ((java.lang.Integer) r9.get(r2)).intValue();
        ((float[]) r0.o)[r2] = ((java.lang.Float) r7.get(r2)).floatValue();
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x021f, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0220, code lost:
    
        if (r0 == null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0222, code lost:
    
        r14 = 1;
        r15 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0225, code lost:
    
        if (r20 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0227, code lost:
    
        r0 = new defpackage.xh1();
        r0.n = new int[]{r6, r11, r5};
        r0.o = new float[]{0.0f, 0.5f, 1.0f};
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x023b, code lost:
    
        r0 = new defpackage.xh1();
        r0.n = new int[]{r6, r5};
        r15 = 2;
        r0.o = new float[]{0.0f, 1.0f};
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x024f, code lost:
    
        if (r12 == r14) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0251, code lost:
    
        if (r12 == r15) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0253, code lost:
    
        r17 = (int[]) r0.n;
        r18 = (float[]) r0.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0261, code lost:
    
        if (r13 == r14) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0263, code lost:
    
        if (r13 == r15) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0265, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0270, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0273, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0276, code lost:
    
        r12 = new android.graphics.LinearGradient(r22, r25, r26, r16, r17, r18, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x027a, code lost:
    
        r12 = new android.graphics.SweepGradient(r8, r10, (int[]) r0.n, (float[]) r0.o);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x028c, code lost:
    
        if (r24 <= 0.0f) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x028e, code lost:
    
        r1 = (int[]) r0.n;
        r22 = (float[]) r0.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x029b, code lost:
    
        if (r13 == 1) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x029e, code lost:
    
        if (r13 == 2) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02a0, code lost:
    
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02ad, code lost:
    
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02b0, code lost:
    
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x02b3, code lost:
    
        r12 = new android.graphics.RadialGradient(r8, r10, r24, r1, r22, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02b8, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02be, code lost:
    
        return new defpackage.d90(r13, r13, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02c6, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.d90 e(android.content.res.Resources r29, int r30, android.content.res.Resources.Theme r31) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d90.e(android.content.res.Resources, int, android.content.res.Resources$Theme):d90");
    }

    public static void f(String str) {
        if (str.equalsIgnoreCase(":memory:")) {
            return;
        }
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = nt1.l(str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i, length + 1).toString().length() == 0) {
            return;
        }
        Log.w("SupportSQLite", "deleting the database file: ".concat(str));
        try {
            SQLiteDatabase.deleteDatabase(new File(str));
        } catch (Exception e) {
            Log.w("SupportSQLite", "delete failed: ", e);
        }
    }

    public void b(long j) {
        if (d(j)) {
            return;
        }
        int i = this.o;
        long[] jArrCopyOf = (long[]) this.p;
        if (i >= jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, Math.max(i + 1, jArrCopyOf.length * 2));
            this.p = jArrCopyOf;
        }
        jArrCopyOf[i] = j;
        if (i >= this.o) {
            this.o = i + 1;
        }
    }

    public void c() {
        int i = this.o;
        this.o = i + 1;
        if (i >= 10) {
            this.o = 0;
            Iterator it = ((LinkedHashMap) this.p).values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = (ArrayList) it.next();
                if (arrayList.size() <= 1) {
                    z23 z23Var = (z23) o70.i0(arrayList);
                    if ((z23Var != null ? (ao1) z23Var.a.get() : null) == null) {
                        it.remove();
                    }
                } else {
                    int size = arrayList.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = i3 - i2;
                        if (((z23) arrayList.get(i4)).a.get() == null) {
                            arrayList.remove(i4);
                            i2++;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
    }

    @Override // defpackage.pi
    public /* synthetic */ ListenableFuture call() {
        return ((hg) this.p).y(this.o);
    }

    public boolean d(long j) {
        int i = this.o;
        for (int i2 = 0; i2 < i; i2++) {
            if (((long[]) this.p)[i2] == j) {
                return true;
            }
        }
        return false;
    }

    public void g(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = (char[]) this.p;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.p = Arrays.copyOf(cArr, i3);
        }
    }

    public void h(int i, hj hjVar) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            hj hjVar2 = ((hj[]) this.p)[i2];
            hjVar2.getClass();
            if (nt1.m(0L, hjVar.g - hjVar2.g) <= 0) {
                break;
            }
            hjVar2.f = i;
            ((hj[]) this.p)[i] = hjVar2;
            i = i2;
        }
        ((hj[]) this.p)[i] = hjVar;
        hjVar.f = i;
    }

    public void i(ee1 ee1Var, int i, int i2) {
        ((da3) this.p).e(new ju3(ee1Var), i, i2);
    }

    public xv1 j() {
        xv1 ow1Var;
        Object obj;
        vi2 vi2Var = (vi2) this.p;
        byte bT = vi2Var.t();
        if (bT == 1) {
            return l(true);
        }
        if (bT == 0) {
            return l(false);
        }
        if (bT != 6) {
            if (bT == 8) {
                return k();
            }
            vi2.l(vi2Var, "Cannot read Json element because of unexpected ".concat(fl4.B(bT)), 0, null, 6);
            throw null;
        }
        int i = this.o + 1;
        this.o = i;
        if (i == 200) {
            yw1 yw1Var = new yw1(this, null);
            zn0 zn0Var = new zn0();
            zn0Var.n = yw1Var;
            zn0Var.o = zn0Var;
            ri0 ri0Var = gg4.a;
            zn0Var.p = ri0Var;
            while (true) {
                obj = zn0Var.p;
                dh0 dh0Var = zn0Var.o;
                if (dh0Var == null) {
                    break;
                }
                if (nt1.g(ri0Var, obj)) {
                    try {
                        yw1 yw1Var2 = zn0Var.n;
                        n44.R(3, yw1Var2);
                        yw1 yw1Var3 = new yw1(yw1Var2.r, dh0Var);
                        yw1Var3.q = zn0Var;
                        Object objQ = yw1Var3.q(t64.a);
                        if (objQ != ri0.n) {
                            dh0Var.g(objQ);
                        }
                    } catch (Throwable th) {
                        dh0Var.g(new f83(th));
                    }
                } else {
                    zn0Var.p = ri0Var;
                    dh0Var.g(obj);
                }
            }
            gg4.T(obj);
            ow1Var = (xv1) obj;
        } else {
            byte bF = vi2Var.f((byte) 6);
            if (vi2Var.t() == 4) {
                vi2.l(vi2Var, "Unexpected leading comma", 0, null, 6);
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (true) {
                if (!vi2Var.b()) {
                    break;
                }
                String strI = vi2Var.i();
                vi2Var.f((byte) 5);
                linkedHashMap.put(strI, j());
                bF = vi2Var.e();
                if (bF != 4) {
                    if (bF != 7) {
                        vi2.l(vi2Var, "Expected end of the object or comma", 0, null, 6);
                        throw null;
                    }
                }
            }
            if (bF == 6) {
                vi2Var.f((byte) 7);
            } else if (bF == 4) {
                bi4.z(vi2Var, "object");
                throw null;
            }
            ow1Var = new ow1(linkedHashMap);
        }
        this.o--;
        return ow1Var;
    }

    public kv1 k() {
        vi2 vi2Var = (vi2) this.p;
        byte bE = vi2Var.e();
        if (vi2Var.t() == 4) {
            vi2.l(vi2Var, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        while (vi2Var.b()) {
            arrayList.add(j());
            bE = vi2Var.e();
            if (bE != 4) {
                boolean z = bE == 9;
                int i = vi2Var.b;
                if (!z) {
                    vi2.l(vi2Var, "Expected end of the array or comma", i, null, 4);
                    throw null;
                }
            }
        }
        if (bE == 8) {
            vi2Var.f((byte) 9);
        } else if (bE == 4) {
            bi4.z(vi2Var, "array");
            throw null;
        }
        return new kv1(arrayList);
    }

    public tw1 l(boolean z) {
        vi2 vi2Var = (vi2) this.p;
        String strJ = !z ? vi2Var.j() : vi2Var.i();
        return (z || !nt1.g(strJ, "null")) ? new gw1(strJ, z) : kw1.INSTANCE;
    }

    public void m() {
        d40 d40Var = d40.c;
        char[] cArr = (char[]) this.p;
        d40Var.getClass();
        cArr.getClass();
        synchronized (d40Var) {
            int i = d40Var.b;
            if (cArr.length + i < ei.a) {
                d40Var.b = i + cArr.length;
                d40Var.a.addLast(cArr);
            }
        }
    }

    public void n(long j) {
        int i = this.o;
        int i2 = 0;
        while (i2 < i) {
            if (j == ((long[]) this.p)[i2]) {
                int i3 = this.o - 1;
                while (i2 < i3) {
                    long[] jArr = (long[]) this.p;
                    int i4 = i2 + 1;
                    jArr[i2] = jArr[i4];
                    i2 = i4;
                }
                this.o--;
                return;
            }
            i2++;
        }
    }

    public void o(hj hjVar) {
        hj hjVar2;
        int i = hjVar.f;
        if (i == -1) {
            k21.f("Failed requirement.");
            return;
        }
        int i2 = this.o;
        hj hjVar3 = ((hj[]) this.p)[i2];
        hjVar3.getClass();
        hjVar.f = -1;
        ((hj[]) this.p)[i2] = null;
        this.o = i2 - 1;
        if (hjVar == hjVar3) {
            return;
        }
        int iM = nt1.m(0L, hjVar3.g - hjVar.g);
        if (iM == 0) {
            ((hj[]) this.p)[i] = hjVar3;
            hjVar3.f = i;
            return;
        }
        if (iM >= 0) {
            h(i, hjVar3);
            return;
        }
        while (true) {
            int i3 = i << 1;
            int i4 = i3 + 1;
            int i5 = this.o;
            if (i4 > i5) {
                if (i3 > i5) {
                    break;
                }
                hjVar2 = ((hj[]) this.p)[i3];
                hjVar2.getClass();
            } else {
                hjVar2 = ((hj[]) this.p)[i3];
                hjVar2.getClass();
                hj hjVar4 = ((hj[]) this.p)[i4];
                hjVar4.getClass();
                if (nt1.m(0L, hjVar4.g - hjVar2.g) >= 0) {
                    hjVar2 = hjVar4;
                }
            }
            if (nt1.m(0L, hjVar2.g - hjVar3.g) <= 0) {
                break;
            }
            int i6 = hjVar2.f;
            hjVar2.f = i;
            ((hj[]) this.p)[i] = hjVar2;
            i = i6;
        }
        ((hj[]) this.p)[i] = hjVar3;
        hjVar3.f = i;
    }

    public void p(qb2 qb2Var, ao1 ao1Var, Map map, long j) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.p;
        Object arrayList = linkedHashMap.get(qb2Var);
        if (arrayList == null) {
            arrayList = new ArrayList();
            linkedHashMap.put(qb2Var, arrayList);
        }
        ArrayList arrayList2 = (ArrayList) arrayList;
        z23 z23Var = new z23(new WeakReference(ao1Var), map, j);
        if (!arrayList2.isEmpty()) {
            int size = arrayList2.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                z23 z23Var2 = (z23) arrayList2.get(i);
                if (j < z23Var2.c) {
                    i++;
                } else if (z23Var2.a.get() == ao1Var) {
                    arrayList2.set(i, z23Var);
                } else {
                    arrayList2.add(i, z23Var);
                }
            }
        } else {
            arrayList2.add(z23Var);
        }
        c();
    }

    public void q(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        g(this.o, length);
        str.getChars(0, str.length(), (char[]) this.p, this.o);
        this.o += length;
    }

    public String toString() {
        switch (this.n) {
            case 4:
                return new String((char[]) this.p, 0, this.o);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ d90(int i, int i2, Object obj) {
        this.n = i2;
        this.p = obj;
        this.o = i;
    }

    public d90(pv1 pv1Var, vi2 vi2Var) {
        this.n = 5;
        pv1Var.getClass();
        this.p = vi2Var;
    }

    public d90(int i, String str) {
        this.n = 2;
        this.o = i;
        this.p = str;
    }

    public d90(da3 da3Var, int i) {
        this.n = 11;
        this.p = da3Var;
        this.n = 11;
        this.o = i;
    }

    public /* synthetic */ d90(char c, int i) {
        this.n = i;
    }

    public d90(ArrayList arrayList) {
        this.n = 1;
        this.o = 0;
        this.p = arrayList;
    }
}
