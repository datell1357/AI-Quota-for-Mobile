.class public final Lod;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:Lpd;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpd;Ljava/lang/Object;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lod;->r:Lpd;

    .line 2
    .line 3
    iput-object p2, p0, Lod;->s:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ldh0;

    .line 2
    .line 3
    new-instance v0, Lod;

    .line 4
    .line 5
    iget-object v1, p0, Lod;->r:Lpd;

    .line 6
    .line 7
    iget-object p0, p0, Lod;->s:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1}, Lod;-><init>(Lpd;Ljava/lang/Object;Ldh0;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lod;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lod;->r:Lpd;

    .line 5
    .line 6
    invoke-static {p1}, Lpd;->b(Lpd;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lod;->s:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1, p0}, Lpd;->a(Lpd;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v0, p1, Lpd;->c:Lwe;

    .line 16
    .line 17
    iget-object v0, v0, Lwe;->o:Lws2;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lpd;->e:Lws2;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lt64;->a:Lt64;

    .line 28
    .line 29
    return-object p0
.end method
