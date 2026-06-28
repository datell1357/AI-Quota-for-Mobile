package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ys4 extends SQLiteOpenHelper {
    public final /* synthetic */ int n;
    public final /* synthetic */ ib0 o;

    public ys4(Context context, String str) {
        super(context, true == str.equals("") ? null : str, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        int i = this.n;
        ib0 ib0Var = this.o;
        switch (i) {
            case 0:
                at4 at4Var = (at4) ib0Var;
                r45 r45Var = (r45) at4Var.a;
                r45 r45Var2 = (r45) at4Var.a;
                r45Var.getClass();
                lj1 lj1Var = at4Var.e;
                if (lj1Var.n != 0 && ((Clock) lj1Var.o).elapsedRealtime() - lj1Var.n < 3600000) {
                    throw new SQLiteException("Database open failed");
                }
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteException unused) {
                    lj1Var.n = ((Clock) lj1Var.o).elapsedRealtime();
                    a25 a25Var = r45Var2.f;
                    r45.l(a25Var);
                    a25Var.f.a("Opening the database failed, dropping and recreating it");
                    if (!r45Var2.a.getDatabasePath("google_app_measurement.db").delete()) {
                        a25 a25Var2 = r45Var2.f;
                        r45.l(a25Var2);
                        a25Var2.f.b("google_app_measurement.db", "Failed to delete corrupted db file");
                    }
                    try {
                        SQLiteDatabase writableDatabase = super.getWritableDatabase();
                        lj1Var.n = 0L;
                        return writableDatabase;
                    } catch (SQLiteException e) {
                        a25 a25Var3 = r45Var2.f;
                        r45.l(a25Var3);
                        a25Var3.f.b(e, "Failed to open freshly created database");
                        throw e;
                    }
                }
            default:
                m15 m15Var = (m15) ib0Var;
                try {
                    return super.getWritableDatabase();
                } catch (SQLiteDatabaseLockedException e2) {
                    throw e2;
                } catch (SQLiteException unused2) {
                    r45 r45Var3 = (r45) m15Var.a;
                    a25 a25Var4 = r45Var3.f;
                    r45.l(a25Var4);
                    a25Var4.f.a("Opening the local database failed, dropping and recreating it");
                    if (!r45Var3.a.getDatabasePath("google_app_measurement_local.db").delete()) {
                        a25 a25Var5 = r45Var3.f;
                        r45.l(a25Var5);
                        a25Var5.f.b("google_app_measurement_local.db", "Failed to delete corrupted local db file");
                    }
                    try {
                        return super.getWritableDatabase();
                    } catch (SQLiteException e3) {
                        a25 a25Var6 = ((r45) m15Var.a).f;
                        r45.l(a25Var6);
                        a25Var6.f.b(e3, "Failed to open local database. Events will bypass local storage");
                        return null;
                    }
                }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i = this.n;
        ib0 ib0Var = this.o;
        switch (i) {
            case 0:
                a25 a25Var = ((r45) ((at4) ib0Var).a).f;
                r45.l(a25Var);
                bt4.c(a25Var, sQLiteDatabase);
                break;
            default:
                a25 a25Var2 = ((r45) ((m15) ib0Var).a).f;
                r45.l(a25Var2);
                bt4.c(a25Var2, sQLiteDatabase);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.n;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) throws Throwable {
        int i = this.n;
        ib0 ib0Var = this.o;
        switch (i) {
            case 0:
                r45 r45Var = (r45) ((at4) ib0Var).a;
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                bt4.b(a25Var, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", at4.f);
                a25 a25Var2 = r45Var.f;
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "events_snapshot", "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", at4.h);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", at4.i);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", at4.k);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", at4.j);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", at4.l);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", at4.m);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", at4.n);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", at4.o);
                er4.a();
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "trigger_uris", "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);", "app_id,trigger_uri,source,timestamp_millis", at4.p);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "upload_queue", "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );", "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp", at4.g);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "diagnostic_signals", "CREATE TABLE IF NOT EXISTS diagnostic_signals ( app_id TEXT NOT NULL, signal_name TEXT NOT NULL, metadata TEXT NOT NULL, count INTEGER NOT NULL, last_increment_timestamp INTEGER NOT NULL);", "app_id,signal_name,metadata,count,last_increment_timestamp", null);
                r45.l(a25Var2);
                bt4.b(a25Var2, sQLiteDatabase, "no_data_mode_events", "CREATE TABLE IF NOT EXISTS no_data_mode_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, data BLOB NOT NULL, timestamp_millis INTEGER NOT NULL);", "app_id,name,data,timestamp_millis", null);
                break;
            default:
                a25 a25Var3 = ((r45) ((m15) ib0Var).a).f;
                r45.l(a25Var3);
                bt4.b(a25Var3, sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", m15.e);
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3 = this.n;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ys4(m15 m15Var, Context context) {
        this(context, "google_app_measurement_local.db");
        this.n = 1;
        this.o = m15Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ys4(at4 at4Var, Context context) {
        this(context, "google_app_measurement.db");
        this.n = 0;
        this.o = at4Var;
    }

    private final void b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void j(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void r(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private final void z(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
