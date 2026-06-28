.class public abstract Lo10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lrx2;

.field public static final b:Lrx2;

.field public static final c:Lrx2;

.field public static final d:Lrx2;

.field public static final e:Lrx2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx2;

    .line 2
    .line 3
    const-string v1, "calendar_sync_enabled"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo10;->a:Lrx2;

    .line 9
    .line 10
    new-instance v0, Lrx2;

    .line 11
    .line 12
    const-string v1, "google_account_email"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lo10;->b:Lrx2;

    .line 18
    .line 19
    new-instance v0, Lrx2;

    .line 20
    .line 21
    const-string v1, "calendar_id"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lo10;->c:Lrx2;

    .line 27
    .line 28
    new-instance v0, Lrx2;

    .line 29
    .line 30
    const-string v1, "last_synced_event_ids"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lo10;->d:Lrx2;

    .line 36
    .line 37
    new-instance v0, Lrx2;

    .line 38
    .line 39
    const-string v1, "last_synced_fingerprint"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lo10;->e:Lrx2;

    .line 45
    .line 46
    return-void
.end method
