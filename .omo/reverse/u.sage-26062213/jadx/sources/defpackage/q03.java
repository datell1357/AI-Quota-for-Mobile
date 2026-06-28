package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.Base64Utils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q03 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<q03> CREATOR = new d6(19);
    public final String n;
    public final String o;
    public final b25 p;
    public final ck q;
    public final bk r;
    public final dk s;
    public final vj t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f267u;

    public q03(String str, String str2, byte[] bArr, ck ckVar, bk bkVar, dk dkVar, vj vjVar, String str3) {
        b25 b25VarH = bArr == null ? null : b25.h(bArr.length, bArr);
        boolean z = false;
        Preconditions.checkArgument((ckVar != null && bkVar == null && dkVar == null) || (ckVar == null && bkVar != null && dkVar == null) || (ckVar == null && bkVar == null && dkVar != null), "Must provide a response object.");
        if (dkVar != null || (str != null && b25VarH != null)) {
            z = true;
        }
        Preconditions.checkArgument(z, "Must provide id and rawId if not an error response.");
        this.n = str;
        this.o = str2;
        this.p = b25VarH;
        this.q = ckVar;
        this.r = bkVar;
        this.s = dkVar;
        this.t = vjVar;
        this.f267u = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof q03)) {
            return false;
        }
        q03 q03Var = (q03) obj;
        return Objects.equal(this.n, q03Var.n) && Objects.equal(this.o, q03Var.o) && Objects.equal(this.p, q03Var.p) && Objects.equal(this.q, q03Var.q) && Objects.equal(this.r, q03Var.r) && Objects.equal(this.s, q03Var.s) && Objects.equal(this.t, q03Var.t) && Objects.equal(this.f267u, q03Var.f267u);
    }

    public final int hashCode() {
        return Objects.hashCode(this.n, this.o, this.p, this.r, this.q, this.s, this.t, this.f267u);
    }

    public final String toString() {
        b25 b25Var = this.p;
        String strEncodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(b25Var == null ? null : b25Var.i());
        String strValueOf = String.valueOf(this.q);
        String strValueOf2 = String.valueOf(this.r);
        String strValueOf3 = String.valueOf(this.s);
        String strValueOf4 = String.valueOf(this.t);
        StringBuilder sbB = di0.B("PublicKeyCredential{\n id='", this.n, "', \n type='", this.o, "', \n rawId=");
        di0.E(sbB, strEncodeUrlSafeNoPadding, ", \n registerResponse=", strValueOf, ", \n signResponse=");
        di0.E(sbB, strValueOf2, ", \n errorResponse=", strValueOf3, ", \n extensionsClientOutputs=");
        return xw1.t(sbB, strValueOf4, ", \n authenticatorAttachment='", this.f267u, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        s45.a.getClass();
        if (w80.o == null) {
            w80.o = new qo3(1);
        }
        synchronized (w80.n) {
        }
        throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
    }
}
