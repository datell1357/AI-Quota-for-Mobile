.class public final Lqj;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpj;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lrj;


# direct methods
.method public constructor <init>(Lrj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqj;->b:Lrj;

    .line 5
    .line 6
    iput-object p2, p0, Lqj;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lul1;)Loj;
    .locals 1

    .line 1
    const-string v0, "http.request"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lom1;

    .line 8
    .line 9
    iget-object v0, p0, Lqj;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lqj;->b:Lrj;

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lrj;->b(Ljava/lang/String;Lkm1;)Loj;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
