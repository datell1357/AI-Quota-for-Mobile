package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b33 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ b33(int i, int i2, Object obj, Object obj2) {
        this.n = i2;
        this.p = obj;
        this.o = i;
        this.q = obj2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        yb0 yb0Var;
        yb0 yb0Var2;
        int i;
        boolean z;
        int i2 = this.n;
        int i3 = 0;
        Object obj2 = this.q;
        int i4 = this.o;
        Object obj3 = this.p;
        t64 t64Var = t64.a;
        switch (i2) {
            case 0:
                c33 c33Var = (c33) obj3;
                cg2 cg2Var = (cg2) obj2;
                yb0 yb0Var3 = (yb0) obj;
                if (c33Var.e == i4 && nt1.g(cg2Var, c33Var.f) && (yb0Var3 instanceof ec0)) {
                    long[] jArr = cg2Var.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i5 = 0;
                        while (true) {
                            long j = jArr[i5];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i6 = 8;
                                int i7 = 8 - ((~(i5 - length)) >>> 31);
                                int i8 = i3;
                                while (i8 < i7) {
                                    if ((255 & j) < 128) {
                                        int i9 = (i5 << 3) + i8;
                                        Object obj4 = cg2Var.b[i9];
                                        boolean z2 = cg2Var.c[i9] != i4;
                                        if (z2) {
                                            i = i6;
                                            ec0 ec0Var = (ec0) yb0Var3;
                                            yb0Var2 = yb0Var3;
                                            kg2 kg2Var = ec0Var.t;
                                            ht4.A(kg2Var, obj4, c33Var);
                                            z = z2;
                                            if (obj4 instanceof os0) {
                                                os0 os0Var = (os0) obj4;
                                                if (!kg2Var.c(os0Var)) {
                                                    ht4.B(ec0Var.w, os0Var);
                                                }
                                                kg2 kg2Var2 = c33Var.g;
                                                if (kg2Var2 != null) {
                                                    kg2Var2.k(obj4);
                                                }
                                            }
                                        } else {
                                            yb0Var2 = yb0Var3;
                                            z = z2;
                                            i = i6;
                                        }
                                        if (z) {
                                            cg2Var.f(i9);
                                        }
                                    } else {
                                        yb0Var2 = yb0Var3;
                                        i = i6;
                                    }
                                    j >>= i;
                                    i8++;
                                    i6 = i;
                                    yb0Var3 = yb0Var2;
                                }
                                yb0Var = yb0Var3;
                                if (i7 != i6) {
                                    break;
                                }
                            } else {
                                yb0Var = yb0Var3;
                            }
                            if (i5 != length) {
                                i5++;
                                yb0Var3 = yb0Var;
                                i3 = 0;
                            }
                        }
                    }
                }
                break;
            default:
                hf3 hf3Var = (hf3) obj3;
                dv2 dv2Var = (dv2) obj2;
                cv2 cv2Var = (cv2) obj;
                int iG = hf3Var.B.a.g();
                if (iG < 0) {
                    iG = 0;
                }
                if (iG <= i4) {
                    i4 = iG;
                }
                int i10 = -i4;
                boolean z3 = hf3Var.C;
                int i11 = z3 ? 0 : i10;
                if (!z3) {
                    i10 = 0;
                }
                cv2Var.n = true;
                cv2.l(cv2Var, dv2Var, i11, i10);
                cv2Var.n = false;
                break;
        }
        return t64Var;
    }
}
