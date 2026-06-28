package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class at4 extends ab5 {
    public static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    public static final String[] g = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};
    public static final String[] h = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    public static final String[] i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;", "last_diagnostics_signal_upload_timestamp", "ALTER TABLE apps ADD COLUMN last_diagnostics_signal_upload_timestamp INTEGER;"};
    public static final String[] j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;", "elapsed_time", "ALTER TABLE raw_events ADD COLUMN elapsed_time INTEGER;"};
    public static final String[] k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    public static final String[] l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    public static final String[] n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    public static final String[] o = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    public static final String[] p = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    public final ys4 d;
    public final lj1 e;

    public at4(pb5 pb5Var) {
        super(pb5Var);
        this.e = new lj1(((r45) this.a).k);
        ((r45) this.a).getClass();
        this.d = new ys4(this, ((r45) this.a).a);
    }

    public static final String a0(List list) {
        return list.isEmpty() ? "" : di0.v(" AND (upload_type IN (", TextUtils.join(", ", list), "))");
    }

    public static final void i0(ContentValues contentValues, Object obj) {
        Preconditions.checkNotEmpty("value");
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
            return;
        }
        if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            k21.f("Invalid value type");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    public final List A(String str, wa5 wa5Var, int i2) {
        ?? arrayList;
        Preconditions.checkNotEmpty(str);
        v();
        w();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseM0 = m0();
                String[] strArr = {"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", "creation_timestamp", "associated_row_id", "last_upload_timestamp"};
                String strA0 = a0(wa5Var.n);
                String strZ = Z();
                StringBuilder sb = new StringBuilder(strA0.length() + 17 + strZ.length());
                sb.append("app_id=?");
                sb.append(strA0);
                sb.append(" AND NOT ");
                sb.append(strZ);
                cursorQuery = sQLiteDatabaseM0.query("upload_queue", strArr, sb.toString(), new String[]{str}, null, null, "creation_timestamp ASC", i2 > 0 ? String.valueOf(i2) : null);
                arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    tb5 tb5VarY = Y(str, cursorQuery.getLong(0), cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));
                    if (tb5VarY != null) {
                        arrayList.add(tb5VarY);
                    }
                }
            } catch (SQLiteException e) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                a25Var.f.c(str, e, "Error to querying MeasurementBatch from upload_queue. appId");
                arrayList = Collections.EMPTY_LIST;
            }
            return arrayList;
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    public final void A0(m25 m25Var, boolean z) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotNull(m25Var);
        v();
        w();
        String strE = m25Var.E();
        r45 r45Var2 = m25Var.a;
        Preconditions.checkNotNull(strE);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strE);
        x55 x55Var = x55.ANALYTICS_STORAGE;
        pb5 pb5Var = this.b;
        if (z) {
            contentValues.put("app_instance_id", (String) null);
        } else if (pb5Var.a(strE).i(x55Var)) {
            contentValues.put("app_instance_id", m25Var.F());
        }
        contentValues.put("gmp_app_id", m25Var.H());
        if (pb5Var.a(strE).i(x55.AD_STORAGE)) {
            j45 j45Var = r45Var2.g;
            r45.l(j45Var);
            j45Var.v();
            contentValues.put("resettable_device_id_hash", m25Var.e);
        }
        j45 j45Var2 = r45Var2.g;
        r45.l(j45Var2);
        j45Var2.v();
        contentValues.put("last_bundle_index", Long.valueOf(m25Var.g));
        j45 j45Var3 = r45Var2.g;
        r45.l(j45Var3);
        j45Var3.v();
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(m25Var.h));
        j45 j45Var4 = r45Var2.g;
        r45.l(j45Var4);
        j45Var4.v();
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(m25Var.i));
        contentValues.put("app_version", m25Var.O());
        j45 j45Var5 = r45Var2.g;
        r45.l(j45Var5);
        j45Var5.v();
        contentValues.put("app_store", m25Var.l);
        j45 j45Var6 = r45Var2.g;
        r45.l(j45Var6);
        j45Var6.v();
        contentValues.put("gmp_version", Long.valueOf(m25Var.m));
        j45 j45Var7 = r45Var2.g;
        r45.l(j45Var7);
        j45Var7.v();
        contentValues.put("dev_cert_hash", Long.valueOf(m25Var.n));
        j45 j45Var8 = r45Var2.g;
        r45.l(j45Var8);
        j45Var8.v();
        contentValues.put("measurement_enabled", Boolean.valueOf(m25Var.o));
        j45 j45Var9 = r45Var2.g;
        j45 j45Var10 = r45Var2.g;
        r45.l(j45Var9);
        j45Var9.v();
        contentValues.put("day", Long.valueOf(m25Var.K));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_public_events_count", Long.valueOf(m25Var.L));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_events_count", Long.valueOf(m25Var.M));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_conversions_count", Long.valueOf(m25Var.N));
        j45 j45Var11 = r45Var2.g;
        r45.l(j45Var11);
        j45Var11.v();
        contentValues.put("config_fetched_time", Long.valueOf(m25Var.S));
        j45 j45Var12 = r45Var2.g;
        r45.l(j45Var12);
        j45Var12.v();
        contentValues.put("failed_config_fetch_time", Long.valueOf(m25Var.T));
        contentValues.put("app_version_int", Long.valueOf(m25Var.Q()));
        contentValues.put("firebase_instance_id", m25Var.K());
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_error_events_count", Long.valueOf(m25Var.O));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_realtime_events_count", Long.valueOf(m25Var.P));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("health_monitor_sample", m25Var.Q);
        contentValues.put("android_id", (Long) 0L);
        j45 j45Var13 = r45Var2.g;
        r45.l(j45Var13);
        j45Var13.v();
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(m25Var.p));
        contentValues.put("dynamite_version", Long.valueOf(m25Var.b()));
        if (pb5Var.a(strE).i(x55Var)) {
            j45 j45Var14 = r45Var2.g;
            r45.l(j45Var14);
            j45Var14.v();
            contentValues.put("session_stitching_token", m25Var.t);
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(m25Var.z()));
        j45 j45Var15 = r45Var2.g;
        r45.l(j45Var15);
        j45Var15.v();
        contentValues.put("target_os_version", Long.valueOf(m25Var.v));
        j45 j45Var16 = r45Var2.g;
        r45.l(j45Var16);
        j45Var16.v();
        contentValues.put("session_stitching_token_hash", Long.valueOf(m25Var.w));
        er4.a();
        ds4 ds4Var = r45Var.d;
        a25 a25Var = r45Var.f;
        if (ds4Var.G(strE, e05.O0)) {
            j45 j45Var17 = r45Var2.g;
            r45.l(j45Var17);
            j45Var17.v();
            contentValues.put("ad_services_version", Integer.valueOf(m25Var.x));
            j45 j45Var18 = r45Var2.g;
            r45.l(j45Var18);
            j45Var18.v();
            contentValues.put("attribution_eligibility_status", Long.valueOf(m25Var.B));
        }
        j45 j45Var19 = r45Var2.g;
        r45.l(j45Var19);
        j45Var19.v();
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(m25Var.y));
        contentValues.put("npa_metadata_value", m25Var.x());
        j45 j45Var20 = r45Var2.g;
        r45.l(j45Var20);
        j45Var20.v();
        contentValues.put("bundle_delivery_index", Long.valueOf(m25Var.F));
        contentValues.put("sgtm_preview_key", m25Var.D());
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("dma_consent_state", Integer.valueOf(m25Var.D));
        r45.l(j45Var10);
        j45Var10.v();
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(m25Var.E));
        contentValues.put("serialized_npa_metadata", m25Var.s());
        contentValues.put("client_upload_eligibility", Integer.valueOf(m25Var.t()));
        j45 j45Var21 = r45Var2.g;
        r45.l(j45Var21);
        j45Var21.v();
        ArrayList arrayList = m25Var.s;
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                r45.l(a25Var);
                a25Var.i.b(strE, "Safelisted events should not be an empty list. appId");
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", arrayList));
            }
        }
        if (ds4Var.G(null, e05.K0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        j45 j45Var22 = r45Var2.g;
        r45.l(j45Var22);
        j45Var22.v();
        contentValues.put("unmatched_pfo", m25Var.z);
        j45 j45Var23 = r45Var2.g;
        r45.l(j45Var23);
        j45Var23.v();
        contentValues.put("unmatched_uwa", m25Var.A);
        j45 j45Var24 = r45Var2.g;
        r45.l(j45Var24);
        j45Var24.v();
        contentValues.put("ad_campaign_info", m25Var.H);
        if (ds4Var.G(strE, e05.j1)) {
            j45 j45Var25 = r45Var2.g;
            r45.l(j45Var25);
            j45Var25.v();
            contentValues.put("last_diagnostics_signal_upload_timestamp", Long.valueOf(m25Var.J));
        }
        try {
            SQLiteDatabase sQLiteDatabaseM0 = m0();
            if (sQLiteDatabaseM0.update("apps", contentValues, "app_id = ?", new String[]{strE}) == 0 && sQLiteDatabaseM0.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                r45.l(a25Var);
                a25Var.f.b(a25.D(strE), "Failed to insert/update app (got -1). appId");
            }
        } catch (SQLiteException e) {
            r45.l(a25Var);
            a25Var.f.c(a25.D(strE), e, "Error storing app. appId");
        }
    }

    public final boolean B(String str) {
        v75[] v75VarArr = {v75.p};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(v75VarArr[0].n));
        String strA0 = a0(arrayList);
        String strZ = Z();
        return R(xw1.t(new StringBuilder((strA0.length() + 61) + strZ.length()), "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?", strA0, " AND NOT ", strZ), new String[]{str}) != 0;
    }

    public final rs4 B0(long j2, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        return C0(j2, str, 1L, false, false, z, false, z2, z3, z4);
    }

    public final void C(Long l2) {
        r45 r45Var = (r45) this.a;
        v();
        w();
        Preconditions.checkNotNull(l2);
        try {
            if (m0().delete("upload_queue", "rowid=?", new String[]{l2.toString()}) != 1) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.i.a("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(e, "Failed to delete a MeasurementBatch in a upload_queue table");
            throw e;
        }
    }

    public final rs4 C0(long j2, String str, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotEmpty(str);
        v();
        w();
        String[] strArr = {str};
        rs4 rs4Var = new rs4();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseM0 = m0();
                cursorQuery = sQLiteDatabaseM0.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    if (cursorQuery.getLong(0) == j2) {
                        rs4Var.b = cursorQuery.getLong(1);
                        rs4Var.a = cursorQuery.getLong(2);
                        rs4Var.c = cursorQuery.getLong(3);
                        rs4Var.d = cursorQuery.getLong(4);
                        rs4Var.e = cursorQuery.getLong(5);
                        rs4Var.f = cursorQuery.getLong(6);
                        rs4Var.g = cursorQuery.getLong(7);
                    }
                    if (z) {
                        rs4Var.b += j3;
                    }
                    if (z2) {
                        rs4Var.a += j3;
                    }
                    if (z3) {
                        rs4Var.c += j3;
                    }
                    if (z4) {
                        rs4Var.d += j3;
                    }
                    if (z5) {
                        rs4Var.e += j3;
                    }
                    if (z6) {
                        rs4Var.f += j3;
                    }
                    if (z7) {
                        rs4Var.g += j3;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j2));
                    contentValues.put("daily_public_events_count", Long.valueOf(rs4Var.a));
                    contentValues.put("daily_events_count", Long.valueOf(rs4Var.b));
                    contentValues.put("daily_conversions_count", Long.valueOf(rs4Var.c));
                    contentValues.put("daily_error_events_count", Long.valueOf(rs4Var.d));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(rs4Var.e));
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(rs4Var.f));
                    contentValues.put("daily_registered_triggers_count", Long.valueOf(rs4Var.g));
                    sQLiteDatabaseM0.update("apps", contentValues, "app_id=?", strArr);
                } else {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.i.b(a25.D(str), "Not updating daily counts, app is not known. appId");
                }
            } catch (SQLiteException e) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.f.c(a25.D(str), e, "Error updating daily counts. appId");
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return rs4Var;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String D() throws java.lang.Throwable {
        /*
            r4 = this;
            android.database.sqlite.SQLiteDatabase r0 = r4.m0()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L22
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            if (r2 == 0) goto L35
            r2 = 0
            java.lang.String r4 = r0.getString(r2)     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            r0.close()
            return r4
        L1a:
            r4 = move-exception
            goto L1e
        L1c:
            r2 = move-exception
            goto L25
        L1e:
            r1 = r0
            goto L3b
        L20:
            r4 = move-exception
            goto L3b
        L22:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L25:
            java.lang.Object r4 = r4.a     // Catch: java.lang.Throwable -> L1a
            r45 r4 = (defpackage.r45) r4     // Catch: java.lang.Throwable -> L1a
            a25 r4 = r4.f     // Catch: java.lang.Throwable -> L1a
            defpackage.r45.l(r4)     // Catch: java.lang.Throwable -> L1a
            x15 r4 = r4.f     // Catch: java.lang.Throwable -> L1a
            java.lang.String r3 = "Database error getting next bundle app id"
            r4.b(r2, r3)     // Catch: java.lang.Throwable -> L1a
        L35:
            if (r0 == 0) goto L3a
            r0.close()
        L3a:
            return r1
        L3b:
            if (r1 == 0) goto L40
            r1.close()
        L40:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.D():java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ui3 D0(java.lang.String r12) throws java.lang.Throwable {
        /*
            r11 = this;
            java.lang.Object r0 = r11.a
            r1 = r0
            r45 r1 = (defpackage.r45) r1
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r12)
            r11.v()
            r11.w()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r11.m0()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L71
            java.lang.String r4 = "apps"
            java.lang.String r11 = "remote_config"
            java.lang.String r0 = "config_last_modified_time"
            java.lang.String r5 = "e_tag"
            java.lang.String[] r5 = new java.lang.String[]{r11, r0, r5}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L71
            java.lang.String r6 = "app_id=?"
            java.lang.String[] r7 = new java.lang.String[]{r12}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L71
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r11 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L71
            boolean r0 = r11.moveToFirst()     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            if (r0 != 0) goto L33
            goto L84
        L33:
            r0 = 0
            byte[] r0 = r11.getBlob(r0)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r3 = 1
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r4 = 2
            java.lang.String r4 = r11.getString(r4)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            boolean r5 = r11.moveToNext()     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            if (r5 == 0) goto L5e
            a25 r5 = r1.f     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            defpackage.r45.l(r5)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            x15 r5 = r5.f     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            y15 r7 = defpackage.a25.D(r12)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r5.b(r7, r6)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            goto L5e
        L59:
            r0 = move-exception
            r12 = r0
            goto L6b
        L5c:
            r0 = move-exception
            goto L74
        L5e:
            if (r0 != 0) goto L61
            goto L84
        L61:
            ui3 r5 = new ui3     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r6 = 7
            r5.<init>(r0, r3, r4, r6)     // Catch: java.lang.Throwable -> L59 android.database.sqlite.SQLiteException -> L5c
            r11.close()
            return r5
        L6b:
            r2 = r11
            goto L8a
        L6d:
            r0 = move-exception
            r11 = r0
            r12 = r11
            goto L8a
        L71:
            r0 = move-exception
            r11 = r0
            r11 = r2
        L74:
            a25 r1 = r1.f     // Catch: java.lang.Throwable -> L59
            defpackage.r45.l(r1)     // Catch: java.lang.Throwable -> L59
            x15 r1 = r1.f     // Catch: java.lang.Throwable -> L59
            java.lang.String r3 = "Error querying remote config. appId"
            y15 r12 = defpackage.a25.D(r12)     // Catch: java.lang.Throwable -> L59
            r1.c(r12, r0, r3)     // Catch: java.lang.Throwable -> L59
        L84:
            if (r11 == 0) goto L89
            r11.close()
        L89:
            return r2
        L8a:
            if (r2 == 0) goto L8f
            r2.close()
        L8f:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.D0(java.lang.String):ui3");
    }

    public final void E(long j2) {
        v();
        w();
        try {
            if (m0().delete("queue", "rowid=?", new String[]{String.valueOf(j2)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.b(e, "Failed to delete a bundle in a queue table");
            throw e;
        }
    }

    public final void E0(u45 u45Var, boolean z) {
        v();
        w();
        Preconditions.checkNotNull(u45Var);
        Preconditions.checkNotEmpty(u45Var.t());
        Preconditions.checkState(u45Var.g2());
        F();
        r45 r45Var = (r45) this.a;
        Clock clock = r45Var.k;
        a25 a25Var = r45Var.f;
        long jCurrentTimeMillis = clock.currentTimeMillis();
        long jH2 = u45Var.h2();
        d05 d05Var = e05.R;
        if (jH2 < jCurrentTimeMillis - ((Long) d05Var.a(null)).longValue() || u45Var.h2() > ((Long) d05Var.a(null)).longValue() + jCurrentTimeMillis) {
            r45.l(a25Var);
            a25Var.i.d("Storing bundle outside of the max uploading time span. appId, now, timestamp", a25.D(u45Var.t()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(u45Var.h2()));
        }
        byte[] bArrA = u45Var.a();
        try {
            ub5 ub5Var = this.b.g;
            pb5.T(ub5Var);
            byte[] bArrF0 = ub5Var.f0(bArrA);
            r45.l(a25Var);
            a25Var.n.b(Integer.valueOf(bArrF0.length), "Saving bundle, size");
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", u45Var.t());
            contentValues.put("bundle_end_timestamp", Long.valueOf(u45Var.h2()));
            contentValues.put("data", bArrF0);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (u45Var.t0()) {
                contentValues.put("retry_count", Integer.valueOf(u45Var.u0()));
            }
            try {
                if (m0().insert("queue", null, contentValues) == -1) {
                    r45.l(a25Var);
                    a25Var.f.b(a25.D(u45Var.t()), "Failed to insert bundle (got -1). appId");
                }
            } catch (SQLiteException e) {
                r45.l(a25Var);
                a25Var.f.c(a25.D(u45Var.t()), e, "Error storing bundle. appId");
            }
        } catch (IOException e2) {
            r45.l(a25Var);
            a25Var.f.c(a25.D(u45Var.t()), e2, "Data loss. Failed to serialize bundle. appId");
        }
    }

    public final void F() {
        int iDelete;
        v();
        w();
        if (g0()) {
            pb5 pb5Var = this.b;
            long jA = pb5Var.i.e.a();
            r45 r45Var = (r45) this.a;
            long jElapsedRealtime = r45Var.k.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jA) > ((Long) e05.M.a(null)).longValue()) {
                pb5Var.i.e.b(jElapsedRealtime);
                v();
                w();
                if (!g0() || (iDelete = m0().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(r45Var.k.currentTimeMillis()), String.valueOf(((Long) e05.R.a(null)).longValue())})) <= 0) {
                    return;
                }
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.n.b(Integer.valueOf(iDelete), "Deleted stale rows. rowsDeleted");
            }
        }
    }

    public final void G(List list) {
        r45 r45Var = (r45) this.a;
        v();
        w();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (g0()) {
            String strJoin = TextUtils.join(",", list);
            String strY = di0.y(new StringBuilder(String.valueOf(strJoin).length() + 2), "(", strJoin, ")");
            if (R(di0.y(new StringBuilder(strY.length() + 80), "SELECT COUNT(1) FROM queue WHERE rowid IN ", strY, " AND retry_count =  2147483647 LIMIT 1"), null) > 0) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.i.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseM0 = m0();
                StringBuilder sb = new StringBuilder(strY.length() + 127);
                sb.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb.append(strY);
                sb.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                sQLiteDatabaseM0.execSQL(sb.toString());
            } catch (SQLiteException e) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.f.b(e, "Error incrementing retry count. error");
            }
        }
    }

    public final void H(Long l2) {
        r45 r45Var = (r45) this.a;
        v();
        w();
        Preconditions.checkNotNull(l2);
        if (g0()) {
            StringBuilder sb = new StringBuilder(l2.toString().length() + 86);
            sb.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb.append(l2);
            sb.append(" AND retry_count =  2147483647 LIMIT 1");
            if (R(sb.toString(), null) > 0) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.i.a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseM0 = m0();
                long jCurrentTimeMillis = r45Var.k.currentTimeMillis();
                StringBuilder sb2 = new StringBuilder(String.valueOf(jCurrentTimeMillis).length() + 60);
                sb2.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb2.append(jCurrentTimeMillis);
                String string = sb2.toString();
                StringBuilder sb3 = new StringBuilder(string.length() + 34 + l2.toString().length() + 29);
                sb3.append("UPDATE upload_queue");
                sb3.append(string);
                sb3.append(" WHERE rowid = ");
                sb3.append(l2);
                sb3.append(" AND retry_count < 2147483647");
                sQLiteDatabaseM0.execSQL(sb3.toString());
            } catch (SQLiteException e) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.f.b(e, "Error incrementing retry count. error");
            }
        }
    }

    public final Object I(Cursor cursor, int i2) {
        r45 r45Var = (r45) this.a;
        int type = cursor.getType(i2);
        if (type == 0) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(Integer.valueOf(type), "Loaded invalid unknown value type, ignoring it");
            return null;
        }
        a25 a25Var3 = r45Var.f;
        r45.l(a25Var3);
        a25Var3.f.a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0093 A[Catch: all -> 0x006d, SQLiteException -> 0x00a4, TryCatch #0 {SQLiteException -> 0x00a4, blocks: (B:15:0x0072, B:17:0x0093, B:20:0x00a6), top: B:30:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a6 A[Catch: all -> 0x006d, SQLiteException -> 0x00a4, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x00a4, blocks: (B:15:0x0072, B:17:0x0093, B:20:0x00a6), top: B:30:0x0072 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long J(java.lang.String r14) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.a
            r45 r0 = (defpackage.r45) r0
            java.lang.String r1 = "select first_open_count from app2 where app_id=?"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            java.lang.String r2 = "first_open_count"
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r2)
            r13.v()
            r13.w()
            android.database.sqlite.SQLiteDatabase r3 = r13.m0()
            r3.beginTransaction()
            r4 = 0
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r7 = 48
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r6.append(r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r1 = r6.toString()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String[] r6 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r7 = -1
            long r9 = r13.S(r1, r6, r7)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            int r13 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            java.lang.String r1 = "app2"
            java.lang.String r6 = "app_id"
            if (r13 != 0) goto L72
            android.content.ContentValues r13 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r13.<init>()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r13.put(r6, r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r9 = 0
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r13.put(r2, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r10 = "previous_install_count"
            r13.put(r10, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r9 = 0
            r10 = 5
            long r9 = r3.insertWithOnConflict(r1, r9, r13, r10)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            int r13 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r13 != 0) goto L71
            a25 r13 = r0.f     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            defpackage.r45.l(r13)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            x15 r13 = r13.f     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r1 = "Failed to insert column (got -1). appId"
            y15 r6 = defpackage.a25.D(r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            r13.c(r6, r2, r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            goto Lbd
        L6d:
            r13 = move-exception
            goto Lc1
        L6f:
            r13 = move-exception
            goto Lac
        L71:
            r9 = r4
        L72:
            android.content.ContentValues r13 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r13.<init>()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r13.put(r6, r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r11 = 1
            long r11 = r11 + r9
            java.lang.Long r6 = java.lang.Long.valueOf(r11)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r13.put(r2, r6)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            java.lang.String r6 = "app_id = ?"
            java.lang.String[] r11 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            int r13 = r3.update(r1, r13, r6, r11)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            long r11 = (long) r13     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            int r13 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r13 != 0) goto La6
            a25 r13 = r0.f     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            defpackage.r45.l(r13)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            x15 r13 = r13.f     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            java.lang.String r1 = "Failed to update column (got 0). appId"
            y15 r4 = defpackage.a25.D(r14)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r13.c(r4, r2, r1)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            goto Lbd
        La4:
            r13 = move-exception
            goto Lab
        La6:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> La4
            r7 = r9
            goto Lbd
        Lab:
            r4 = r9
        Lac:
            a25 r0 = r0.f     // Catch: java.lang.Throwable -> L6d
            defpackage.r45.l(r0)     // Catch: java.lang.Throwable -> L6d
            x15 r0 = r0.f     // Catch: java.lang.Throwable -> L6d
            java.lang.String r1 = "Error inserting column. appId"
            y15 r14 = defpackage.a25.D(r14)     // Catch: java.lang.Throwable -> L6d
            r0.d(r1, r14, r2, r13)     // Catch: java.lang.Throwable -> L6d
            r7 = r4
        Lbd:
            r3.endTransaction()
            return r7
        Lc1:
            r3.endTransaction()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.J(java.lang.String):long");
    }

    public final boolean K(String str, String str2) {
        return R("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    public final void L(List list) {
        Preconditions.checkNotNull(list);
        v();
        w();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(((Long) list.get(i2)).longValue());
        }
        sb.append(")");
        int iDelete = m0().delete("raw_events", sb.toString(), null);
        if (iDelete != list.size()) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.c(Integer.valueOf(iDelete), Integer.valueOf(list.size()), "Deleted fewer rows from raw events table than expected");
        }
    }

    public final long M(String str) {
        Preconditions.checkNotEmpty(str);
        return S("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final void N(String str, Long l2, long j2, u35 u35Var) {
        v();
        w();
        Preconditions.checkNotNull(u35Var);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l2);
        r45 r45Var = (r45) this.a;
        byte[] bArrA = u35Var.a();
        a25 a25Var = r45Var.f;
        a25 a25Var2 = r45Var.f;
        r45.l(a25Var);
        a25Var.n.c(r45Var.j.a(str), Integer.valueOf(bArrA.length), "Saving complex main event, appId, data size");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l2);
        contentValues.put("children_to_process", Long.valueOf(j2));
        contentValues.put("main_event", bArrA);
        try {
            if (m0().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                r45.l(a25Var2);
                a25Var2.f.b(a25.D(str), "Failed to insert complex main event (got -1). appId");
            }
        } catch (SQLiteException e) {
            r45.l(a25Var2);
            a25Var2.f.c(a25.D(str), e, "Error storing complex main event. appId");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void O(java.lang.String r28, java.lang.Long r29, java.lang.String r30, android.os.Bundle r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.O(java.lang.String, java.lang.Long, java.lang.String, android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v0, types: [ab5, at4, ib0] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.y55 P(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.a
            r45 r0 = (defpackage.r45) r0
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)
            r3.v()
            r3.w()
            java.lang.String[] r4 = new java.lang.String[]{r4}
            java.lang.String r1 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r3.m0()     // Catch: java.lang.Throwable -> L47 android.database.sqlite.SQLiteException -> L4a
            android.database.Cursor r3 = r3.rawQuery(r1, r4)     // Catch: java.lang.Throwable -> L47 android.database.sqlite.SQLiteException -> L4a
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            if (r4 != 0) goto L36
            a25 r4 = r0.f     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            defpackage.r45.l(r4)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            x15 r4 = r4.n     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            java.lang.String r1 = "No data found"
            r4.a(r1)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
        L2e:
            r3.close()
            goto L5c
        L32:
            r4 = move-exception
            goto L45
        L34:
            r4 = move-exception
            goto L4d
        L36:
            r4 = 0
            java.lang.String r4 = r3.getString(r4)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            r1 = 1
            int r1 = r3.getInt(r1)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            y55 r2 = defpackage.y55.c(r1, r4)     // Catch: java.lang.Throwable -> L32 android.database.sqlite.SQLiteException -> L34
            goto L2e
        L45:
            r2 = r3
            goto L62
        L47:
            r3 = move-exception
            r4 = r3
            goto L62
        L4a:
            r3 = move-exception
            r4 = r3
            r3 = r2
        L4d:
            a25 r0 = r0.f     // Catch: java.lang.Throwable -> L32
            defpackage.r45.l(r0)     // Catch: java.lang.Throwable -> L32
            x15 r0 = r0.f     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = "Error querying database."
            r0.b(r4, r1)     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L5c
            goto L2e
        L5c:
            if (r2 != 0) goto L61
            y55 r3 = defpackage.y55.c
            return r3
        L61:
            return r2
        L62:
            if (r2 == 0) goto L67
            r2.close()
        L67:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.P(java.lang.String):y55");
    }

    public final void Q(String str, oa5 oa5Var) {
        v();
        w();
        Preconditions.checkNotNull(oa5Var);
        Preconditions.checkNotEmpty(str);
        r45 r45Var = (r45) this.a;
        Clock clock = r45Var.k;
        a25 a25Var = r45Var.f;
        long jCurrentTimeMillis = clock.currentTimeMillis();
        d05 d05Var = e05.u0;
        long jLongValue = jCurrentTimeMillis - ((Long) d05Var.a(null)).longValue();
        long j2 = oa5Var.o;
        if (j2 < jLongValue || j2 > ((Long) d05Var.a(null)).longValue() + jCurrentTimeMillis) {
            r45.l(a25Var);
            a25Var.i.d("Storing trigger URI outside of the max retention time span. appId, now, timestamp", a25.D(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(j2));
        }
        r45.l(a25Var);
        a25Var.n.a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", oa5Var.n);
        contentValues.put("source", Integer.valueOf(oa5Var.p));
        contentValues.put("timestamp_millis", Long.valueOf(j2));
        try {
            if (m0().insert("trigger_uris", null, contentValues) == -1) {
                r45.l(a25Var);
                a25Var.f.b(a25.D(str), "Failed to insert trigger URI (got -1). appId");
            }
        } catch (SQLiteException e) {
            r45.l(a25Var);
            a25Var.f.c(a25.D(str), e, "Error storing trigger URI. appId");
        }
    }

    public final long R(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = m0().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j2 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                a25Var.f.c(str, e, "Database error");
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long S(String str, String[] strArr, long j2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = m0().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    j2 = cursorRawQuery.getLong(0);
                }
                cursorRawQuery.close();
                return j2;
            } catch (SQLiteException e) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                a25Var.f.c(str, e, "Database error");
                throw e;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String T(java.lang.String r3, java.lang.String[] r4) {
        /*
            r2 = this;
            android.database.sqlite.SQLiteDatabase r0 = r2.m0()
            r1 = 0
            android.database.Cursor r1 = r0.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L1e android.database.sqlite.SQLiteException -> L20
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1e android.database.sqlite.SQLiteException -> L20
            if (r4 == 0) goto L18
            r4 = 0
            java.lang.String r2 = r1.getString(r4)     // Catch: java.lang.Throwable -> L1e android.database.sqlite.SQLiteException -> L20
            r1.close()
            return r2
        L18:
            r1.close()
            java.lang.String r2 = ""
            return r2
        L1e:
            r2 = move-exception
            goto L32
        L20:
            r4 = move-exception
            java.lang.Object r2 = r2.a     // Catch: java.lang.Throwable -> L1e
            r45 r2 = (defpackage.r45) r2     // Catch: java.lang.Throwable -> L1e
            a25 r2 = r2.f     // Catch: java.lang.Throwable -> L1e
            defpackage.r45.l(r2)     // Catch: java.lang.Throwable -> L1e
            x15 r2 = r2.f     // Catch: java.lang.Throwable -> L1e
            java.lang.String r0 = "Database error"
            r2.c(r3, r4, r0)     // Catch: java.lang.Throwable -> L1e
            throw r4     // Catch: java.lang.Throwable -> L1e
        L32:
            if (r1 == 0) goto L37
            r1.close()
        L37:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.T(java.lang.String, java.lang.String[]):java.lang.String");
    }

    public final void U(ContentValues contentValues) {
        r45 r45Var = (r45) this.a;
        try {
            SQLiteDatabase sQLiteDatabaseM0 = m0();
            if (contentValues.getAsString("app_id") == null) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.h.b(a25.D("app_id"), "Value of the primary key is not set.");
                return;
            }
            new StringBuilder(10).append("app_id = ?");
            if (sQLiteDatabaseM0.update("consent_settings", contentValues, r5.toString(), new String[]{r4}) == 0 && sQLiteDatabaseM0.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                a25Var2.f.c(a25.D("consent_settings"), a25.D("app_id"), "Failed to insert/update table (got -1). key");
            }
        } catch (SQLiteException e) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.f.d("Error storing into table. key", a25.D("consent_settings"), a25.D("app_id"), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0129  */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.xt4 V(java.lang.String r24, java.lang.String r25, java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.V(java.lang.String, java.lang.String, java.lang.String):xt4");
    }

    public final void W(String str, xt4 xt4Var) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotNull(xt4Var);
        v();
        w();
        ContentValues contentValues = new ContentValues();
        String str2 = xt4Var.a;
        contentValues.put("app_id", str2);
        contentValues.put("name", xt4Var.b);
        contentValues.put("lifetime_count", Long.valueOf(xt4Var.c));
        contentValues.put("current_bundle_count", Long.valueOf(xt4Var.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(xt4Var.f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(xt4Var.g));
        contentValues.put("last_bundled_day", xt4Var.h);
        contentValues.put("last_sampled_complex_event_id", xt4Var.i);
        contentValues.put("last_sampling_rate", xt4Var.j);
        contentValues.put("current_session_count", Long.valueOf(xt4Var.e));
        Boolean bool = xt4Var.k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m0().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.f.b(a25.D(str2), "Failed to insert/update event aggregates (got -1). appId");
            }
        } catch (SQLiteException e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.c(a25.D(xt4Var.a), e, "Error storing event aggregates. appId");
        }
    }

    public final void X(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        v();
        w();
        try {
            m0().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.c(a25.D(str2), e, "Error deleting snapshot. appId");
        }
    }

    public final tb5 Y(String str, long j2, byte[] bArr, String str2, String str3, int i2, int i3, long j3, long j4, long j5) {
        v75 v75Var;
        r45 r45Var = (r45) this.a;
        if (TextUtils.isEmpty(str2)) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.m.a("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            i45 i45Var = (i45) ub5.g0(p45.A(), bArr);
            v75[] v75VarArrValues = v75.values();
            int length = v75VarArrValues.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    v75Var = v75.t;
                    break;
                }
                v75Var = v75VarArrValues[i4];
                if (v75Var.n == i2) {
                    break;
                }
                i4++;
            }
            if (v75Var != v75.p && v75Var != v75.s && i3 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = Collections.unmodifiableList(((p45) i45Var.o).t()).iterator();
                while (it.hasNext()) {
                    q45 q45Var = (q45) ((u45) it.next()).k();
                    q45Var.b();
                    ((u45) q45Var.o).X0(i3);
                    arrayList.add((u45) q45Var.d());
                }
                i45Var.b();
                ((p45) i45Var.o).F();
                i45Var.b();
                ((p45) i45Var.o).E(arrayList);
            }
            HashMap map = new HashMap();
            if (str3 != null) {
                String[] strArrSplit = str3.split("\r\n");
                int length2 = strArrSplit.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length2) {
                        break;
                    }
                    String str4 = strArrSplit[i5];
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] strArrSplit2 = str4.split("=", 2);
                    if (strArrSplit2.length != 2) {
                        a25 a25Var2 = r45Var.f;
                        r45.l(a25Var2);
                        a25Var2.f.b(str4, "Invalid upload header: ");
                        break;
                    }
                    map.put(strArrSplit2[0], strArrSplit2[1]);
                    i5++;
                }
            }
            return new tb5(j2, (p45) i45Var.d(), str2, map, v75Var, j3, j4, j5, i3);
        } catch (IOException e) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.f.c(str, e, "Failed to queued MeasurementBatch from upload_queue. appId");
            return null;
        }
    }

    public final String Z() {
        long jCurrentTimeMillis = ((r45) this.a).k.currentTimeMillis();
        Locale locale = Locale.US;
        Long l2 = (Long) e05.S.a(null);
        l2.getClass();
        String str = "(upload_type = 1 AND ABS(creation_timestamp - " + jCurrentTimeMillis + ") > " + l2 + ")";
        long jLongValue = ((Long) e05.R.a(null)).longValue();
        StringBuilder sb = new StringBuilder("(upload_type != 1 AND ABS(creation_timestamp - ");
        sb.append(jCurrentTimeMillis);
        sb.append(") > ");
        String strX = di0.x(sb, jLongValue, ")");
        StringBuilder sb2 = new StringBuilder(str.length() + 5 + strX.length() + 1);
        di0.E(sb2, "(", str, " OR ", strX);
        sb2.append(")");
        return sb2.toString();
    }

    public final void b0(String str, y55 y55Var) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(y55Var);
        v();
        w();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", y55Var.g());
        contentValues.put("consent_source", Integer.valueOf(y55Var.b));
        U(contentValues);
    }

    public final List c0(String str) {
        List list;
        r45 r45Var = (r45) this.a;
        v();
        w();
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase sQLiteDatabaseM0 = m0();
            sQLiteDatabaseM0.beginTransaction();
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = sQLiteDatabaseM0.query("diagnostic_signals", new String[]{"signal_name", "metadata", "count"}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                    if (cursorQuery.moveToFirst()) {
                        boolean zIsEmpty = str.isEmpty();
                        do {
                            String string = cursorQuery.getString(0);
                            String str2 = cursorQuery.isNull(1) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(1));
                            if (string == null) {
                                a25 a25Var = r45Var.f;
                                r45.l(a25Var);
                                a25Var.f.b(a25.D(str), "Read null value from diagnostic signals table, ignoring it. appId");
                            } else {
                                long j2 = cursorQuery.getLong(2);
                                cz4 cz4VarT = ez4.t();
                                cz4VarT.b();
                                ((ez4) cz4VarT.o).u(string);
                                cz4VarT.b();
                                ((ez4) cz4VarT.o).x(j2);
                                cz4VarT.b();
                                ((ez4) cz4VarT.o).w(str2);
                                if (zIsEmpty) {
                                    cz4VarT.b();
                                    ((ez4) cz4VarT.o).v();
                                }
                                arrayList.add((ez4) cz4VarT.d());
                            }
                        } while (cursorQuery.moveToNext());
                        sQLiteDatabaseM0.delete("diagnostic_signals", "app_id=?", new String[]{str});
                        sQLiteDatabaseM0.setTransactionSuccessful();
                        list = arrayList;
                    } else {
                        sQLiteDatabaseM0.setTransactionSuccessful();
                        list = arrayList;
                    }
                } catch (SQLiteException e) {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.f.c(a25.D(str), e, "Error querying or deleting diagnostic signals. appId");
                    list = Collections.EMPTY_LIST;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                sQLiteDatabaseM0.endTransaction();
                return list;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursorQuery.close();
                }
                sQLiteDatabaseM0.endTransaction();
                throw th;
            }
        } catch (SQLiteException e2) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.f.c(a25.D(str), e2, "Error opening database for diagnostic signals. appId");
            return Collections.EMPTY_LIST;
        }
    }

    public final void d0(String str, y55 y55Var) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(y55Var);
        v();
        w();
        b0(str, P(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", y55Var.g());
        U(contentValues);
    }

    public final y55 e0(String str) {
        Preconditions.checkNotNull(str);
        v();
        w();
        return y55.c(100, T("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}));
    }

    public final xt4 f0(String str, u35 u35Var, String str2) {
        xt4 xt4VarV = V("events", str, u35Var.y());
        if (xt4VarV != null) {
            long j2 = xt4VarV.e + 1;
            long j3 = xt4VarV.d + 1;
            return new xt4(xt4VarV.a, xt4VarV.b, xt4VarV.c + 1, j3, j2, xt4VarV.f, xt4VarV.g, xt4VarV.h, xt4VarV.i, xt4VarV.j, xt4VarV.k);
        }
        r45 r45Var = (r45) this.a;
        a25 a25Var = r45Var.f;
        r45.l(a25Var);
        a25Var.i.c(a25.D(str), r45Var.j.a(str2), "Event aggregate wasn't created during raw event logging. appId, event");
        return new xt4(str, u35Var.y(), 1L, 1L, 1L, u35Var.A(), 0L, null, null, null, null);
    }

    public final boolean g0() {
        return ((r45) this.a).a.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2 A[Catch: all -> 0x007c, SQLiteException -> 0x007f, TryCatch #1 {SQLiteException -> 0x007f, blocks: (B:19:0x0074, B:40:0x00cc, B:42:0x00f2, B:43:0x0104, B:44:0x0108, B:45:0x0118, B:47:0x011e, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01e8, B:72:0x01d8, B:76:0x01ef, B:53:0x014c, B:78:0x0201), top: B:91:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0104 A[Catch: all -> 0x007c, SQLiteException -> 0x007f, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x007f, blocks: (B:19:0x0074, B:40:0x00cc, B:42:0x00f2, B:43:0x0104, B:44:0x0108, B:45:0x0118, B:47:0x011e, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01e8, B:72:0x01d8, B:76:0x01ef, B:53:0x014c, B:78:0x0201), top: B:91:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0192 A[Catch: all -> 0x007c, SQLiteException -> 0x007f, LOOP:0: B:66:0x0192->B:101:?, LOOP_START, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x007f, blocks: (B:19:0x0074, B:40:0x00cc, B:42:0x00f2, B:43:0x0104, B:44:0x0108, B:45:0x0118, B:47:0x011e, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01e8, B:72:0x01d8, B:76:0x01ef, B:53:0x014c, B:78:0x0201), top: B:91:0x0074 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ef A[Catch: all -> 0x007c, SQLiteException -> 0x007f, TryCatch #1 {SQLiteException -> 0x007f, blocks: (B:19:0x0074, B:40:0x00cc, B:42:0x00f2, B:43:0x0104, B:44:0x0108, B:45:0x0118, B:47:0x011e, B:48:0x012e, B:60:0x015f, B:63:0x0167, B:64:0x0172, B:66:0x0192, B:67:0x01a0, B:68:0x01aa, B:73:0x01e8, B:72:0x01d8, B:76:0x01ef, B:53:0x014c, B:78:0x0201), top: B:91:0x0074 }] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h0(java.lang.String r21, long r22, long r24, defpackage.q41 r26) {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.h0(java.lang.String, long, long, q41):void");
    }

    public final void j0() {
        w();
        m0().beginTransaction();
    }

    public final void k0() {
        w();
        m0().setTransactionSuccessful();
    }

    public final void l0() {
        w();
        m0().endTransaction();
    }

    public final SQLiteDatabase m0() {
        v();
        try {
            return this.d.getWritableDatabase();
        } catch (SQLiteException e) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.i.b(e, "Error opening database");
            throw e;
        }
    }

    public final void n0(String str) {
        xt4 xt4VarV;
        X("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = m0().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string != null && (xt4VarV = V("events", str, string)) != null) {
                            W("events_snapshot", xt4VarV);
                        }
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e) {
                a25 a25Var = ((r45) this.a).f;
                r45.l(a25Var);
                a25Var.f.c(a25.D(str), e, "Error creating snapshot. appId");
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o0(java.lang.String r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.o0(java.lang.String):void");
    }

    public final void p0(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        v();
        w();
        try {
            m0().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            r45 r45Var = (r45) this.a;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.d("Error deleting user property. appId", a25.D(str), r45Var.j.c(str2), e);
        }
    }

    public final boolean q0(xb5 xb5Var) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotNull(xb5Var);
        v();
        w();
        String str = xb5Var.a;
        String str2 = xb5Var.b;
        String str3 = xb5Var.c;
        if (r0(str, str3) == null) {
            if (ac5.u0(str3)) {
                if (R("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= Math.max(Math.min(r45Var.d.E(str, e05.V), 100), 25)) {
                    return false;
                }
            } else if (!"_npa".equals(str3)) {
                long jR = R("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, str2});
                r45Var.getClass();
                if (jR >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", str2);
        contentValues.put("name", str3);
        contentValues.put("set_timestamp", Long.valueOf(xb5Var.d));
        i0(contentValues, xb5Var.e);
        try {
            if (m0().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(a25.D(str), "Failed to insert/update user property (got -1). appId");
            return true;
        } catch (SQLiteException e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.c(a25.D(str), e, "Error storing user property. appId");
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.xb5 r0(java.lang.String r12, java.lang.String r13) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.a
            r1 = r0
            r45 r1 = (defpackage.r45) r1
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r12)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r13)
            r11.v()
            r11.w()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r11.m0()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r4 = "user_attributes"
            java.lang.String r0 = "set_timestamp"
            java.lang.String r5 = "value"
            java.lang.String r6 = "origin"
            java.lang.String[] r5 = new java.lang.String[]{r0, r5, r6}     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            java.lang.String r6 = "app_id=? and name=?"
            java.lang.String[] r7 = new java.lang.String[]{r12, r13}     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            r9 = 0
            r10 = 0
            r8 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteException -> L7a
            boolean r0 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            if (r0 != 0) goto L37
            goto L95
        L37:
            r0 = 0
            long r8 = r3.getLong(r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            r0 = 1
            java.lang.Object r10 = r11.I(r3, r0)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            if (r10 != 0) goto L44
            goto L95
        L44:
            r11 = 2
            java.lang.String r6 = r3.getString(r11)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            xb5 r4 = new xb5     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L71
            r5 = r12
            r7 = r13
            r4.<init>(r5, r6, r7, r8, r10)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            boolean r11 = r3.moveToNext()     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            if (r11 == 0) goto L6d
            a25 r11 = r1.f     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            defpackage.r45.l(r11)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            x15 r11 = r11.f     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            java.lang.String r12 = "Got multiple records for user property, expected one. appId"
            y15 r13 = defpackage.a25.D(r5)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            r11.b(r13, r12)     // Catch: java.lang.Throwable -> L67 android.database.sqlite.SQLiteException -> L6a
            goto L6d
        L67:
            r0 = move-exception
            r11 = r0
            goto L75
        L6a:
            r0 = move-exception
        L6b:
            r11 = r0
            goto L7f
        L6d:
            r3.close()
            return r4
        L71:
            r0 = move-exception
            r5 = r12
            r7 = r13
            goto L6b
        L75:
            r2 = r3
            goto L9b
        L77:
            r0 = move-exception
            r11 = r0
            goto L9b
        L7a:
            r0 = move-exception
            r5 = r12
            r7 = r13
            r11 = r0
            r3 = r2
        L7f:
            a25 r12 = r1.f     // Catch: java.lang.Throwable -> L67
            defpackage.r45.l(r12)     // Catch: java.lang.Throwable -> L67
            x15 r12 = r12.f     // Catch: java.lang.Throwable -> L67
            java.lang.String r13 = "Error querying user property. appId"
            y15 r0 = defpackage.a25.D(r5)     // Catch: java.lang.Throwable -> L67
            p15 r1 = r1.j     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = r1.c(r7)     // Catch: java.lang.Throwable -> L67
            r12.d(r13, r0, r1, r11)     // Catch: java.lang.Throwable -> L67
        L95:
            if (r3 == 0) goto L9a
            r3.close()
        L9a:
            return r2
        L9b:
            if (r2 == 0) goto La0
            r2.close()
        La0:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.r0(java.lang.String, java.lang.String):xb5");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    public final List s0(String str) {
        String str2;
        SQLiteException sQLiteException;
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotEmpty(str);
        v();
        w();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                r45Var.getClass();
                cursorQuery = m0().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    while (true) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str3 = string2;
                        long j2 = cursorQuery.getLong(2);
                        Object objI = I(cursorQuery, 3);
                        if (objI == null) {
                            try {
                                a25 a25Var = r45Var.f;
                                r45.l(a25Var);
                                a25Var.f.b(a25.D(str), "Read invalid user property value, ignoring it. appId");
                                str2 = str;
                            } catch (SQLiteException e) {
                                sQLiteException = e;
                                str2 = str;
                                a25 a25Var2 = r45Var.f;
                                r45.l(a25Var2);
                                a25Var2.f.c(a25.D(str2), sQLiteException, "Error querying user properties. appId");
                                arrayList = Collections.EMPTY_LIST;
                            }
                        } else {
                            str2 = str;
                            try {
                                arrayList.add(new xb5(str2, str3, string, j2, objI));
                            } catch (SQLiteException e2) {
                                e = e2;
                                sQLiteException = e;
                                a25 a25Var22 = r45Var.f;
                                r45.l(a25Var22);
                                a25Var22.f.c(a25.D(str2), sQLiteException, "Error querying user properties. appId");
                                arrayList = Collections.EMPTY_LIST;
                            }
                        }
                        if (!cursorQuery.moveToNext()) {
                            break;
                        }
                        str = str2;
                    }
                }
            } finally {
            }
        } catch (SQLiteException e3) {
            e = e3;
            str2 = str;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b1, code lost:
    
        defpackage.r45.l(r13);
        r13.f.b(1000, "Read more than the max allowed user properties, ignoring excess");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0135  */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List t0(java.lang.String r23, java.lang.String r24, java.lang.String r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.t0(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final boolean u0(fq4 fq4Var) {
        r45 r45Var = (r45) this.a;
        Preconditions.checkNotNull(fq4Var);
        v();
        w();
        String str = fq4Var.n;
        Preconditions.checkNotNull(str);
        if (r0(str, fq4Var.p.o) == null) {
            long jR = R("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            r45Var.getClass();
            if (jR >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", fq4Var.o);
        contentValues.put("name", fq4Var.p.o);
        i0(contentValues, Preconditions.checkNotNull(fq4Var.p.Y()));
        contentValues.put("active", Boolean.valueOf(fq4Var.r));
        contentValues.put("trigger_event_name", fq4Var.s);
        contentValues.put("trigger_timeout", Long.valueOf(fq4Var.f101u));
        bu4 bu4Var = fq4Var.t;
        ac5 ac5Var = r45Var.i;
        a25 a25Var = r45Var.f;
        r45.j(ac5Var);
        contentValues.put("timed_out_event", ac5.d0(bu4Var));
        contentValues.put("creation_timestamp", Long.valueOf(fq4Var.q));
        r45.j(ac5Var);
        contentValues.put("triggered_event", ac5.d0(fq4Var.v));
        contentValues.put("triggered_timestamp", Long.valueOf(fq4Var.p.p));
        contentValues.put("time_to_live", Long.valueOf(fq4Var.w));
        contentValues.put("expired_event", ac5.d0(fq4Var.x));
        try {
            if (m0().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            r45.l(a25Var);
            a25Var.f.b(a25.D(str), "Failed to insert/update conditional user property (got -1)");
            return true;
        } catch (SQLiteException e) {
            r45.l(a25Var);
            a25Var.f.c(a25.D(str), e, "Error storing conditional user property");
            return true;
        }
    }

    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00f0: MOVE (r7 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]) (LINE:241), block:B:29:0x00f0 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.fq4 v0(java.lang.String r25, java.lang.String r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.v0(java.lang.String, java.lang.String):fq4");
    }

    public final void w0(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        v();
        w();
        try {
            m0().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            r45 r45Var = (r45) this.a;
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.d("Error deleting conditional property", a25.D(str), r45Var.j.c(str2), e);
        }
    }

    public final List x0(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        v();
        w();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return y0(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // defpackage.ab5
    public final void y() {
        r45 r45Var = (r45) this.a;
        if (r45Var.d.G(null, e05.e1)) {
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.E(new o9(14, this));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0055, code lost:
    
        r0 = r1.f;
        defpackage.r45.l(r0);
        r0.f.b(1000, "Read more than the max allowed conditional properties, ignoring extra");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List y0(java.lang.String r29, java.lang.String[] r30) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.y0(java.lang.String, java.lang.String[]):java.util.List");
    }

    public final long z(String str, p45 p45Var, String str2, Map map, v75 v75Var, Long l2) {
        int iDelete;
        r45 r45Var = (r45) this.a;
        v();
        w();
        Preconditions.checkNotNull(p45Var);
        Preconditions.checkNotEmpty(str);
        v();
        w();
        if (g0()) {
            pb5 pb5Var = this.b;
            long jA = pb5Var.i.f.a();
            Clock clock = r45Var.k;
            a25 a25Var = r45Var.f;
            long jElapsedRealtime = clock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jA) > ((Long) e05.M.a(null)).longValue()) {
                pb5Var.i.f.b(jElapsedRealtime);
                v();
                w();
                if (g0() && (iDelete = m0().delete("upload_queue", Z(), new String[0])) > 0) {
                    r45.l(a25Var);
                    a25Var.n.b(Integer.valueOf(iDelete), "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted");
                }
                Preconditions.checkNotEmpty(str);
                v();
                w();
                try {
                    int iE = r45Var.d.E(str, e05.A);
                    if (iE > 0) {
                        m0().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(iE)});
                    }
                } catch (SQLiteException e) {
                    r45.l(a25Var);
                    a25Var.f.c(a25.D(str), e, "Error deleting over the limit queued batches. appId");
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
            arrayList.add(sb.toString());
        }
        byte[] bArrA = p45Var.a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", bArrA);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", TextUtils.join("\r\n", arrayList));
        contentValues.put("upload_type", Integer.valueOf(v75Var.n));
        Clock clock2 = r45Var.k;
        a25 a25Var2 = r45Var.f;
        contentValues.put("creation_timestamp", Long.valueOf(clock2.currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l2 != null) {
            contentValues.put("associated_row_id", l2);
        }
        try {
            long jInsert = m0().insert("upload_queue", null, contentValues);
            if (jInsert != -1) {
                return jInsert;
            }
            r45.l(a25Var2);
            a25Var2.f.b(str, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId");
            return -1L;
        } catch (SQLiteException e2) {
            r45.l(a25Var2);
            a25Var2.f.c(str, e2, "Error storing MeasurementBatch to upload_queue. appId");
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x040a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.m25 z0(java.lang.String r53) {
        /*
            Method dump skipped, instruction units count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.at4.z0(java.lang.String):m25");
    }
}
