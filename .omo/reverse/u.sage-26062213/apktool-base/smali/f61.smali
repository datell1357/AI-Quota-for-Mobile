.class public final Lf61;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lij0;


# direct methods
.method public constructor <init>(Lij0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf61;->a:Lij0;

    .line 5
    .line 6
    return-void
.end method

.method public static a()Lf61;
    .locals 2

    .line 1
    invoke-static {}, Le61;->b()Le61;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le61;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Le61;->d:Lga0;

    .line 9
    .line 10
    const-class v1, Lf61;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lw90;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lf61;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v0, "FirebaseCrashlytics component is not present."

    .line 22
    .line 23
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method
