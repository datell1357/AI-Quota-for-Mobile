package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zd implements db2 {
    public final he a;

    public zd(he heVar) {
        this.a = heVar;
    }

    @Override // defpackage.db2
    public final int a(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).g(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).g(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // defpackage.db2
    public final int c(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).R(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).R(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // defpackage.db2
    public final eb2 f(gb2 gb2Var, List list, long j) {
        js2 js2Var;
        int size = list.size();
        dv2[] dv2VarArr = new dv2[size];
        int size2 = list.size();
        long j2 = 0;
        for (int i = 0; i < size2; i++) {
            ya2 ya2Var = (ya2) list.get(i);
            Object objI = ya2Var.i();
            ce ceVar = objI instanceof ce ? (ce) objI : null;
            if (ceVar != null && ((Boolean) ceVar.b.getValue()).booleanValue()) {
                dv2 dv2VarE = ya2Var.e(j);
                long j3 = (((long) dv2VarE.o) & 4294967295L) | (((long) dv2VarE.n) << 32);
                dv2VarArr[i] = dv2VarE;
                j2 = j3;
            }
        }
        int size3 = list.size();
        for (int i2 = 0; i2 < size3; i2++) {
            ya2 ya2Var2 = (ya2) list.get(i2);
            if (dv2VarArr[i2] == null) {
                dv2VarArr[i2] = ya2Var2.e(j);
            }
        }
        if (gb2Var.q()) {
            js2Var = new js2(Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) (j2 & 4294967295L)));
        } else {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                dv2 dv2Var = dv2VarArr[i5];
                if (dv2Var != null) {
                    Object objI2 = ((ya2) list.get(i5)).i();
                    ce ceVar2 = objI2 instanceof ce ? (ce) objI2 : null;
                    if (ceVar2 == null || !((Boolean) ceVar2.c.getValue()).booleanValue()) {
                        int i6 = dv2Var.n;
                        if (i6 > i3) {
                            i3 = i6;
                        }
                        int i7 = dv2Var.o;
                        if (i7 > i4) {
                            i4 = i7;
                        }
                    }
                }
            }
            js2Var = new js2(Integer.valueOf(i3), Integer.valueOf(i4));
        }
        int iIntValue = ((Number) js2Var.n).intValue();
        int iIntValue2 = ((Number) js2Var.o).intValue();
        if (!gb2Var.q()) {
            this.a.c.setValue(new rs1((((long) iIntValue) << 32) | (((long) iIntValue2) & 4294967295L)));
        }
        return gb2Var.e0(iIntValue, iIntValue2, h01.n, new yd(dv2VarArr, this, iIntValue, iIntValue2));
    }

    @Override // defpackage.db2
    public final int g(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).T(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).T(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }

    @Override // defpackage.db2
    public final int i(jt1 jt1Var, List list, int i) {
        Integer numValueOf;
        if (list.isEmpty()) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(((ya2) list.get(0)).K(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((ya2) list.get(i2)).K(i));
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }
}
