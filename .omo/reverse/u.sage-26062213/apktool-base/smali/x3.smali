.class public abstract Lx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lrx2;

.field public static final b:Lrx2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx2;

    .line 2
    .line 3
    const-string v1, "account_info"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx3;->a:Lrx2;

    .line 9
    .line 10
    new-instance v0, Lrx2;

    .line 11
    .line 12
    const-string v1, "account_migration_json_completed"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lx3;->b:Lrx2;

    .line 18
    .line 19
    return-void
.end method
