.class public final Lva5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lze1;

.field public final b:Z

.field public final c:Lnp1;

.field public volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lze1;ZLnp1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lva5;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lva5;->a:Lze1;

    .line 8
    .line 9
    iput-boolean p2, p0, Lva5;->b:Z

    .line 10
    .line 11
    iput-object p3, p0, Lva5;->c:Lnp1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lva5;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lva5;->a:Lze1;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lze1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lva5;->d:Ljava/lang/String;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    return-object v0
.end method
