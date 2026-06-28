.class public final Lws;
.super Lfh0;


# instance fields
.field public synthetic q:Ljava/lang/Object;

.field public r:I

.field public final synthetic s:Lxq;


# direct methods
.method public constructor <init>(Lxq;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lws;->s:Lxq;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lws;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lws;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lws;->r:I

    .line 9
    .line 10
    iget-object p1, p0, Lws;->s:Lxq;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lxq;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
