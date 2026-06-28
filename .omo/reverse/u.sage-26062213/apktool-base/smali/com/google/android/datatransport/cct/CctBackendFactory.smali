.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Lrk0;)Lv14;
    .locals 2

    .line 1
    new-instance p0, Li30;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Lyn;

    .line 5
    .line 6
    iget-object v0, v0, Lyn;->a:Landroid/content/Context;

    .line 7
    .line 8
    check-cast p1, Lyn;

    .line 9
    .line 10
    iget-object v1, p1, Lyn;->b:Lpr3;

    .line 11
    .line 12
    iget-object p1, p1, Lyn;->c:Lpr3;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, p1}, Li30;-><init>(Landroid/content/Context;Lpr3;Lpr3;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
