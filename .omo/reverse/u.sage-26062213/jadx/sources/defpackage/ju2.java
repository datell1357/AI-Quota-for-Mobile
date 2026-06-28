package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju2 implements ku2 {
    public final int a;
    public final ku2[] b;
    public final int c;

    public ju2(int i, ku2[] ku2VarArr, int i2) {
        this.a = i;
        this.b = ku2VarArr;
        this.c = i2;
    }

    public static ju2 c(iu2 iu2Var, int i, ku2 ku2Var, int i2, int i3) {
        int i4 = (i >>> i3) & 31;
        int i5 = 1 << i4;
        int i6 = (i2 >>> i3) & 31;
        int i7 = 1 << i6;
        ku2 ku2Var2 = iu2Var;
        ku2 ku2Var3 = ku2Var;
        if (i5 == i7) {
            ju2 ju2VarC = c(iu2Var, i, ku2Var, i2, i3 + 5);
            return new ju2(i5, new ku2[]{ju2VarC}, ju2VarC.c);
        }
        if (i4 > i6) {
            ku2Var3 = iu2Var;
            ku2Var2 = ku2Var;
        }
        return new ju2(i5 | i7, new ku2[]{ku2Var2, ku2Var3}, ku2Var3.size() + ku2Var2.size());
    }

    @Override // defpackage.ku2
    public final ku2 a(int i, int i2, Object obj, Object obj2) {
        int i3 = 1 << ((i >>> i2) & 31);
        int i4 = this.a;
        int iBitCount = Integer.bitCount((i3 - 1) & i4);
        int i5 = i4 & i3;
        int i6 = this.c;
        ku2[] ku2VarArr = this.b;
        if (i5 != 0) {
            ku2[] ku2VarArr2 = (ku2[]) Arrays.copyOf(ku2VarArr, ku2VarArr.length);
            ku2 ku2VarA = ku2VarArr[iBitCount].a(i, i2 + 5, obj, obj2);
            ku2VarArr2[iBitCount] = ku2VarA;
            return new ju2(i4, ku2VarArr2, (ku2VarA.size() + i6) - ku2VarArr[iBitCount].size());
        }
        int i7 = i4 | i3;
        ku2[] ku2VarArr3 = new ku2[ku2VarArr.length + 1];
        System.arraycopy(ku2VarArr, 0, ku2VarArr3, 0, iBitCount);
        ku2VarArr3[iBitCount] = new iu2(1, obj, obj2);
        System.arraycopy(ku2VarArr, iBitCount, ku2VarArr3, iBitCount + 1, ku2VarArr.length - iBitCount);
        return new ju2(i7, ku2VarArr3, i6 + 1);
    }

    @Override // defpackage.ku2
    public final Object b(int i, int i2, Object obj) {
        int i3 = 1 << ((i >>> i2) & 31);
        int i4 = this.a;
        if ((i4 & i3) == 0) {
            return null;
        }
        return this.b[Integer.bitCount((i3 - 1) & i4)].b(i, i2 + 5, obj);
    }

    @Override // defpackage.ku2
    public final int size() {
        return this.c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CompressedIndex(");
        sb.append("bitmap=" + Integer.toBinaryString(this.a) + " ");
        for (ku2 ku2Var : this.b) {
            sb.append(ku2Var);
            sb.append(" ");
        }
        sb.append(")");
        return sb.toString();
    }
}
