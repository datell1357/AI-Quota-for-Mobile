package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ad2 {
    public final int a;
    public final int b;

    public ad2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public void a(ee1 ee1Var) {
        ee1Var.getClass();
        throw new an2("Migration functionality with a SupportSQLiteDatabase (without a provided SQLiteDriver) requires overriding the migrate(SupportSQLiteDatabase) function.");
    }

    public void b(jb3 jb3Var) {
        jb3Var.getClass();
        if (!(jb3Var instanceof ju3)) {
            throw new an2("Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function.");
        }
        a(((ju3) jb3Var).n);
    }
}
