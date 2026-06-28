package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s94 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<s94> CREATOR = new d6(26);
    public final List n;

    public s94(ArrayList arrayList) {
        this.n = arrayList;
    }

    public final JSONArray Y() {
        try {
            JSONArray jSONArray = new JSONArray();
            List list = this.n;
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    t94 t94Var = (t94) list.get(i);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put((int) t94Var.p);
                    jSONArray2.put((int) t94Var.o);
                    jSONArray2.put((int) t94Var.p);
                    jSONArray.put(i, jSONArray2);
                }
            }
            return jSONArray;
        } catch (JSONException e) {
            k21.i("Error encoding UvmEntries to JSON object", e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof s94)) {
            return false;
        }
        List list = ((s94) obj).n;
        List list2 = this.n;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        List list = this.n;
        return Objects.hashCode(list == null ? null : new HashSet(list));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.n, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
