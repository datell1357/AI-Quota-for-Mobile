package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<vj> CREATOR = new av4(1);
    public final s94 n;
    public final wy4 o;
    public final wj p;
    public final k25 q;
    public final String r;

    public vj(s94 s94Var, wy4 wy4Var, wj wjVar, k25 k25Var, String str) {
        this.n = s94Var;
        this.o = wy4Var;
        this.p = wjVar;
        this.q = k25Var;
        this.r = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof vj)) {
            return false;
        }
        vj vjVar = (vj) obj;
        return Objects.equal(this.n, vjVar.n) && Objects.equal(this.o, vjVar.o) && Objects.equal(this.p, vjVar.p) && Objects.equal(this.q, vjVar.q) && Objects.equal(this.r, vjVar.r);
    }

    public final int hashCode() {
        return Objects.hashCode(this.n, this.o, this.p, this.q, this.r);
    }

    public final String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            wj wjVar = this.p;
            if (wjVar != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("rk", wjVar.n);
                    jSONObject.put("credProps", jSONObject2);
                } catch (JSONException e) {
                    throw new RuntimeException("Error encoding AuthenticationExtensionsCredPropsOutputs to JSON object", e);
                }
            }
            s94 s94Var = this.n;
            if (s94Var != null) {
                jSONObject.put("uvm", s94Var.Y());
            }
            k25 k25Var = this.q;
            if (k25Var != null) {
                jSONObject.put("prf", k25Var.Y());
            }
            String str = this.r;
            if (str != null) {
                jSONObject.put("txAuthSimple", str);
            }
            return di0.v("AuthenticationExtensionsClientOutputs{", jSONObject.toString(), "}");
        } catch (JSONException e2) {
            k21.i("Error encoding AuthenticationExtensionsClientOutputs to JSON object", e2);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.n, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.o, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.p, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.q, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.r, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
