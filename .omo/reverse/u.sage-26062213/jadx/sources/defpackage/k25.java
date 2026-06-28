package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k25 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<k25> CREATOR = new av4(6);
    public final boolean n;
    public final b25 o;

    public k25(boolean z, b25 b25Var) {
        this.n = z;
        this.o = b25Var;
    }

    public final JSONObject Y() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.n) {
                jSONObject.put("enabled", true);
            }
            b25 b25Var = this.o;
            byte[] bArrI = b25Var == null ? null : b25Var.i();
            if (bArrI != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("first", Base64.encodeToString(Arrays.copyOf(bArrI, 32), 11));
                if (bArrI.length == 64) {
                    jSONObject2.put("second", Base64.encodeToString(Arrays.copyOfRange(bArrI, 32, 64), 11));
                }
                jSONObject.put("results", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e) {
            k21.i("Error encoding AuthenticationExtensionsPrfOutputs to JSON object", e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k25)) {
            return false;
        }
        k25 k25Var = (k25) obj;
        return this.n == k25Var.n && Objects.equal(this.o, k25Var.o);
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.n), this.o);
    }

    public final String toString() {
        return di0.v("AuthenticationExtensionsPrfOutputs{", Y().toString(), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.n);
        b25 b25Var = this.o;
        SafeParcelWriter.writeByteArray(parcel, 2, b25Var == null ? null : b25Var.i(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
