.class public final Lvk2;
.super Lfh0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public q:J

.field public r:J

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lxk2;

.field public u:I


# direct methods
.method public constructor <init>(Lxk2;Lfh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvk2;->t:Lxk2;

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
    .locals 6

    .line 1
    iput-object p1, p0, Lvk2;->s:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lvk2;->u:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lvk2;->u:I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iget-object v0, p0, Lvk2;->t:Lxk2;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lxk2;->I(JJLdh0;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
