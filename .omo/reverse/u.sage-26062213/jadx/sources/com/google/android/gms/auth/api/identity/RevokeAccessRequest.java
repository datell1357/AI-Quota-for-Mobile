package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.zj4;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class RevokeAccessRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<RevokeAccessRequest> CREATOR = new zbp();
    private final zj4 zba;
    private final Account zbb;
    private final String zbc;

    public RevokeAccessRequest(List list, Account account, String str) {
        this.zba = zj4.h(list);
        this.zbb = account;
        this.zbc = str;
    }

    public static Builder builder() {
        return new Builder(null);
    }

    public boolean equals(Object obj) {
        if (obj instanceof RevokeAccessRequest) {
            RevokeAccessRequest revokeAccessRequest = (RevokeAccessRequest) obj;
            zj4 zj4Var = this.zba;
            int size = zj4Var.size();
            zj4 zj4Var2 = revokeAccessRequest.zba;
            if (size == zj4Var2.size() && zj4Var.containsAll(zj4Var2) && Objects.equal(this.zbb, revokeAccessRequest.zbb) && Objects.equal(this.zbc, revokeAccessRequest.zbc)) {
                return true;
            }
        }
        return false;
    }

    public Account getAccount() {
        return this.zbb;
    }

    public List<Scope> getScopes() {
        return this.zba;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbc);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 2, getAccount(), i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zbc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final Builder zba() {
        return new Builder(this, null);
    }

    public final /* synthetic */ zj4 zbb() {
        return this.zba;
    }

    public final /* synthetic */ Account zbc() {
        return this.zbb;
    }

    public final /* synthetic */ String zbd() {
        return this.zbc;
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Builder {
        private zj4 zba;
        private Account zbb;
        private String zbc;

        public /* synthetic */ Builder(RevokeAccessRequest revokeAccessRequest, byte[] bArr) {
            this.zba = revokeAccessRequest.zbb();
            this.zbb = revokeAccessRequest.zbc();
            this.zbc = revokeAccessRequest.zbd();
        }

        public RevokeAccessRequest build() {
            return new RevokeAccessRequest(this.zba, this.zbb, this.zbc);
        }

        public Builder setAccount(Account account) {
            this.zbb = account;
            return this;
        }

        public Builder setScopes(List<Scope> list) {
            this.zba = zj4.h(list);
            return this;
        }

        public final Builder zba(String str) {
            this.zbc = str;
            return this;
        }

        private Builder() {
            throw null;
        }

        public /* synthetic */ Builder(byte[] bArr) {
        }
    }
}
