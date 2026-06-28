package com.google.api.client.testing.http.apache;

import com.google.api.client.util.Preconditions;
import defpackage.ap0;
import defpackage.av;
import defpackage.be0;
import defpackage.d94;
import defpackage.dn1;
import defpackage.em1;
import defpackage.g60;
import defpackage.ie0;
import defpackage.km1;
import defpackage.nm1;
import defpackage.om1;
import defpackage.p33;
import defpackage.qm1;
import defpackage.sm1;
import defpackage.ul1;
import defpackage.vm1;
import defpackage.xj;
import defpackage.y63;
import defpackage.zm1;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MockHttpClient extends ap0 {
    int responseCode;

    public MockHttpClient() {
        super(null, null);
    }

    public y63 createClientRequestDirector(qm1 qm1Var, g60 g60Var, ie0 ie0Var, be0 be0Var, zm1 zm1Var, nm1 nm1Var, sm1 sm1Var, p33 p33Var, xj xjVar, xj xjVar2, d94 d94Var, km1 km1Var) {
        return new y63() { // from class: com.google.api.client.testing.http.apache.MockHttpClient.1
            @Override // defpackage.y63
            public vm1 execute(em1 em1Var, om1 om1Var, ul1 ul1Var) {
                return new av(dn1.s, MockHttpClient.this.responseCode);
            }
        };
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public MockHttpClient setResponseCode(int i) {
        Preconditions.checkArgument(i >= 0);
        this.responseCode = i;
        return this;
    }
}
