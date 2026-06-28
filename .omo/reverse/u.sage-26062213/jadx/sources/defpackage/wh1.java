package defpackage;

import android.accounts.Account;
import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.extensions.android.gms.auth.GoogleAccountCredential;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.CalendarScopes;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.Events;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wh1 {
    public static final hh2 i = new hh2();
    public final Context a;
    public final y84 b;
    public final m10 c;
    public final String d;
    public final String e;
    public final String f;
    public final List g;
    public final String h;

    public wh1(Context context, y84 y84Var, m10 m10Var) {
        String str;
        context.getClass();
        y84Var.getClass();
        m10Var.getClass();
        this.a = context;
        this.b = y84Var;
        this.c = m10Var;
        String str2 = y84Var.n;
        this.d = str2;
        this.e = di0.v("Reset times for ", str2, " usage limits.");
        this.f = oh1.a[y84Var.ordinal()] == 1 ? "#000000" : "#d97757";
        this.g = tv4.F(str2, str2.concat(" Usage"), str2.concat(" Resets"));
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            str = "aiusageclaudereset";
        } else {
            if (iOrdinal != 3) {
                mk0.k(y84Var, "Calendar sync is not supported for ");
                throw null;
            }
            str = "aiusagecodereset";
        }
        this.h = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.api.services.calendar.model.Event a(defpackage.wh1 r12, java.lang.String r13, defpackage.p84 r14) {
        /*
            Method dump skipped, instruction units count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wh1.a(wh1, java.lang.String, p84):com.google.api.services.calendar.model.Event");
    }

    public static final String b(wh1 wh1Var, long j, String str) {
        int iAbs = Math.abs(str.hashCode());
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append(iAbs);
        String strW0 = gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(gt3.w0(sb.toString(), "0", "a0"), "1", "b1"), "2", "c2"), "3", "d3"), "4", "e4"), "5", "f5"), "6", "g6"), "7", "h7"), "8", "i8"), "9", "j9");
        return wh1Var.h + strW0;
    }

    public static final Calendar c(wh1 wh1Var) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        GoogleSignInAccount googleSignInAccountG = wh1Var.g();
        if (googleSignInAccountG == null) {
            ra3.m(new Object[0]);
            return null;
        }
        googleSignInAccountG.getEmail();
        Account account = googleSignInAccountG.getAccount();
        googleSignInAccountG.getAccount();
        Objects.toString(account);
        ra3.c(new Object[0]);
        GoogleAccountCredential googleAccountCredentialUsingOAuth2 = GoogleAccountCredential.usingOAuth2(wh1Var.a, tv4.E(CalendarScopes.CALENDAR));
        googleAccountCredentialUsingOAuth2.setSelectedAccount(googleSignInAccountG.getAccount());
        googleAccountCredentialUsingOAuth2.getSelectedAccount();
        googleAccountCredentialUsingOAuth2.getSelectedAccountName();
        ra3.c(new Object[0]);
        Calendar calendarBuild = new Calendar.Builder(new NetHttpTransport(), GsonFactory.getDefaultInstance(), googleAccountCredentialUsingOAuth2).setApplicationName("AI Usage").build();
        ra3.c(new Object[0]);
        return calendarBuild;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(defpackage.wh1 r11, com.google.api.services.calendar.Calendar r12, defpackage.fh0 r13) {
        /*
            Method dump skipped, instruction units count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wh1.d(wh1, com.google.api.services.calendar.Calendar, fh0):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(Calendar calendar, String str, List list) {
        try {
            String nextPageToken = null;
            List list2 = (List) ca.H(d01.n, new qh1(this, 0 == true ? 1 : 0, 0));
            DateTime dateTime = new DateTime(System.currentTimeMillis() - 86400000);
            ArrayList arrayList = new ArrayList();
            do {
                Events eventsExecute = calendar.events().list(str).setTimeMin(dateTime).setPageToken(nextPageToken).execute();
                List<Event> items = eventsExecute.getItems();
                if (items != null) {
                    for (Event event : items) {
                        String id = event.getId();
                        if (id != null && gt3.y0(id, this.h, false)) {
                            String id2 = event.getId();
                            id2.getClass();
                            arrayList.add(id2);
                        }
                    }
                }
                nextPageToken = eventsExecute.getNextPageToken();
            } while (nextPageToken != null);
            List listC0 = o70.C0(new LinkedHashSet(o70.s0(list2, arrayList)));
            ra3 ra3Var = ez3.a;
            listC0.toString();
            list.toString();
            ra3Var.getClass();
            ra3.c(new Object[0]);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listC0) {
                if (!list.contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.isEmpty()) {
                ez3.a.getClass();
                ra3.c(new Object[0]);
                return;
            }
            ra3 ra3Var2 = ez3.a;
            arrayList2.size();
            ra3Var2.getClass();
            ra3.c(new Object[0]);
            BatchRequest batchRequestBatch = calendar.batch();
            ph1 ph1Var = new ph1();
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                calendar.events().delete(str, (String) obj2).queue(batchRequestBatch, ph1Var);
            }
            batchRequestBatch.execute();
            ez3.a.getClass();
            ra3.c(new Object[0]);
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.n(new Object[0]);
        }
    }

    public final GoogleSignInClient f() {
        ArrayList arrayList;
        ez3.a.getClass();
        ra3.c(new Object[0]);
        GoogleSignInOptions googleSignInOptionsBuild = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestEmail().requestScopes(new Scope(CalendarScopes.CALENDAR), new Scope[0]).build();
        googleSignInOptionsBuild.getClass();
        Scope[] scopeArray = googleSignInOptionsBuild.getScopeArray();
        if (scopeArray != null) {
            arrayList = new ArrayList(scopeArray.length);
            for (Scope scope : scopeArray) {
                arrayList.add(scope.getScopeUri());
            }
        } else {
            arrayList = null;
        }
        Objects.toString(arrayList);
        ra3.c(new Object[0]);
        GoogleSignInClient client = GoogleSignIn.getClient(this.a, googleSignInOptionsBuild);
        client.getClass();
        return client;
    }

    public final GoogleSignInAccount g() {
        GoogleSignInAccount lastSignedInAccount = GoogleSignIn.getLastSignedInAccount(this.a);
        ra3 ra3Var = ez3.a;
        if (lastSignedInAccount != null) {
            lastSignedInAccount.getEmail();
        }
        if (lastSignedInAccount != null) {
            lastSignedInAccount.isExpired();
        }
        if (lastSignedInAccount != null) {
            lastSignedInAccount.getId();
        }
        ra3Var.getClass();
        ra3.c(new Object[0]);
        if (lastSignedInAccount == null) {
            ra3.c(new Object[0]);
            return null;
        }
        boolean zHasPermissions = GoogleSignIn.hasPermissions(lastSignedInAccount, new Scope(CalendarScopes.CALENDAR));
        Set<Scope> grantedScopes = lastSignedInAccount.getGrantedScopes();
        Account account = lastSignedInAccount.getAccount();
        Objects.toString(grantedScopes);
        Objects.toString(account);
        ra3.c(new Object[0]);
        if (zHasPermissions) {
            return lastSignedInAccount;
        }
        ra3.m(new Object[0]);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(defpackage.d84 r9, defpackage.fh0 r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof defpackage.th1
            if (r0 == 0) goto L13
            r0 = r10
            th1 r0 = (defpackage.th1) r0
            int r1 = r0.v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.v = r1
            goto L18
        L13:
            th1 r0 = new th1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.t
            int r1 = r0.v
            r2 = 2
            r3 = 1
            r4 = 0
            ri0 r5 = defpackage.ri0.n
            if (r1 == 0) goto L43
            if (r1 == r3) goto L36
            if (r1 != r2) goto L30
            fh2 r8 = r0.r
            defpackage.gg4.T(r10)     // Catch: java.lang.Throwable -> L2d
            goto L8e
        L2d:
            r9 = move-exception
            goto L9a
        L30:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r8)
            return r4
        L36:
            int r9 = r0.s
            fh2 r1 = r0.r
            d84 r3 = r0.q
            defpackage.gg4.T(r10)
            r10 = r1
            r1 = r9
            r9 = r3
            goto L73
        L43:
            defpackage.gg4.T(r10)
            ra3 r10 = defpackage.ez3.a
            java.util.List r1 = r9.c()
            r1.size()
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.getName()
            java.lang.System.identityHashCode(r8)
            r1 = 0
            java.lang.Object[] r6 = new java.lang.Object[r1]
            r10.getClass()
            defpackage.ra3.c(r6)
            r0.q = r9
            hh2 r10 = defpackage.wh1.i
            r0.r = r10
            r0.s = r1
            r0.v = r3
            java.lang.Object r3 = r10.j(r0)
            if (r3 != r5) goto L73
            goto L8a
        L73:
            zp0 r3 = defpackage.zu0.a     // Catch: java.lang.Throwable -> L97
            lp0 r3 = defpackage.lp0.p     // Catch: java.lang.Throwable -> L97
            vh1 r6 = new vh1     // Catch: java.lang.Throwable -> L94
            r6.<init>(r8, r9, r4)     // Catch: java.lang.Throwable -> L94
            r0.q = r4     // Catch: java.lang.Throwable -> L94
            r0.r = r10     // Catch: java.lang.Throwable -> L94
            r0.s = r1     // Catch: java.lang.Throwable -> L94
            r0.v = r2     // Catch: java.lang.Throwable -> L94
            java.lang.Object r8 = defpackage.ca.O(r3, r6, r0)     // Catch: java.lang.Throwable -> L94
            if (r8 != r5) goto L8b
        L8a:
            return r5
        L8b:
            r7 = r10
            r10 = r8
            r8 = r7
        L8e:
            nh1 r10 = (defpackage.nh1) r10     // Catch: java.lang.Throwable -> L2d
            r8.b(r4)
            return r10
        L94:
            r9 = move-exception
        L95:
            r8 = r10
            goto L9a
        L97:
            r8 = move-exception
            r9 = r8
            goto L95
        L9a:
            r8.b(r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wh1.h(d84, fh0):java.lang.Object");
    }
}
