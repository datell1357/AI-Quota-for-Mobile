package defpackage;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vz0 extends qj0 {
    public final xg l;
    public final pz0 m;
    public boolean n = true;

    public vz0(xg xgVar) {
        this.l = xgVar;
        this.m = new pz0(xgVar);
    }

    @Override // defpackage.qj0
    public final InputFilter[] L(InputFilter[] inputFilterArr) {
        if (!this.n) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof pz0) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (sparseArray.indexOfKey(i3) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i3];
                    i2++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            pz0 pz0Var = this.m;
            if (i4 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = pz0Var;
                return inputFilterArr3;
            }
            if (inputFilterArr[i4] == pz0Var) {
                return inputFilterArr;
            }
            i4++;
        }
    }

    @Override // defpackage.qj0
    public final void W(boolean z) {
        if (z) {
            g0();
        }
    }

    @Override // defpackage.qj0
    public final void X(boolean z) {
        this.n = z;
        g0();
        xg xgVar = this.l;
        xgVar.setFilters(L(xgVar.getFilters()));
    }

    public final void g0() {
        xg xgVar = this.l;
        TransformationMethod transformationMethod = xgVar.getTransformationMethod();
        if (this.n) {
            if (!(transformationMethod instanceof zz0) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                transformationMethod = new zz0(transformationMethod);
            }
        } else if (transformationMethod instanceof zz0) {
            transformationMethod = ((zz0) transformationMethod).n;
        }
        xgVar.setTransformationMethod(transformationMethod);
    }
}
