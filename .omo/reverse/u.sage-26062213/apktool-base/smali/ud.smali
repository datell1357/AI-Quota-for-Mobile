.class public final Lud;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic o:Lng0;


# direct methods
.method public constructor <init>(Lng0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lud;->o:Lng0;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lgb2;

    .line 2
    .line 3
    check-cast p2, Lya2;

    .line 4
    .line 5
    check-cast p3, Lmf0;

    .line 6
    .line 7
    iget-wide v0, p3, Lmf0;->a:J

    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lya2;->e(J)Ldv2;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p3, p2, Ldv2;->n:I

    .line 14
    .line 15
    iget v0, p2, Ldv2;->o:I

    .line 16
    .line 17
    new-instance v1, Loc;

    .line 18
    .line 19
    iget-object p0, p0, Lud;->o:Lng0;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {v1, v2, p2, p0}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lh01;->n:Lh01;

    .line 26
    .line 27
    invoke-interface {p1, p3, v0, p0, v1}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
