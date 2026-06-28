.class public final Lh21;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ln03;


# direct methods
.method public constructor <init>(Ln03;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lh21;->a:Ln03;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lmj3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh21;->a:Ln03;

    .line 2
    .line 3
    invoke-interface {v0}, Ln03;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lw14;

    .line 8
    .line 9
    new-instance v1, Lo01;

    .line 10
    .line 11
    const-string v2, "json"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lo01;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lmk0;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lmk0;-><init>(Lh21;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lx14;

    .line 22
    .line 23
    const-string p0, "FIREBASE_APPQUALITY_SESSION"

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1, v2}, Lx14;->a(Ljava/lang/String;Lo01;Lmk0;)Lrp;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Lao;

    .line 30
    .line 31
    sget-object v1, Lry2;->n:Lry2;

    .line 32
    .line 33
    invoke-direct {v0, p1, v1}, Lao;-><init>(Ljava/lang/Object;Lry2;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lq73;

    .line 37
    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    invoke-direct {p1, v1}, Lq73;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lrp;->n(Lao;Lz14;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
