.class public final Lo81;
.super Lfh0;


# instance fields
.field public synthetic q:Ljava/lang/Object;

.field public r:I

.field public final synthetic s:Lvq;

.field public t:Lvq;

.field public u:Lb81;

.field public v:Ljava/lang/Throwable;

.field public w:J


# direct methods
.method public constructor <init>(Lvq;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo81;->s:Lvq;

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
    iput-object p1, p0, Lo81;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lo81;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lo81;->r:I

    .line 9
    .line 10
    iget-object p1, p0, Lo81;->s:Lvq;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lvq;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
