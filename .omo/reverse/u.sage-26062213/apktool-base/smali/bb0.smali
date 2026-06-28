.class public final Lbb0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic r:Ls33;


# direct methods
.method public constructor <init>(Ls33;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb0;->r:Ls33;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb81;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Throwable;

    .line 4
    .line 5
    check-cast p3, Ldh0;

    .line 6
    .line 7
    new-instance p1, Lbb0;

    .line 8
    .line 9
    iget-object p0, p0, Lbb0;->r:Ls33;

    .line 10
    .line 11
    invoke-direct {p1, p0, p3}, Lbb0;-><init>(Ls33;Ldh0;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lt64;->a:Lt64;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lbb0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lbb0;->r:Ls33;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ls33;->n:Z

    .line 8
    .line 9
    sget-object p0, Lt64;->a:Lt64;

    .line 10
    .line 11
    return-object p0
.end method
