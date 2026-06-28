.class public final synthetic Ljo3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lfo3;

.field public final synthetic o:Lnd2;

.field public final synthetic p:Ljl3;

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Lfo3;Lnd2;Ljl3;JJJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljo3;->n:Lfo3;

    .line 5
    .line 6
    iput-object p2, p0, Ljo3;->o:Lnd2;

    .line 7
    .line 8
    iput-object p3, p0, Ljo3;->p:Ljl3;

    .line 9
    .line 10
    iput-wide p4, p0, Ljo3;->q:J

    .line 11
    .line 12
    iput-wide p6, p0, Ljo3;->r:J

    .line 13
    .line 14
    iput-wide p8, p0, Ljo3;->s:J

    .line 15
    .line 16
    iput-wide p10, p0, Ljo3;->t:J

    .line 17
    .line 18
    iput-wide p12, p0, Ljo3;->u:J

    .line 19
    .line 20
    iput p14, p0, Ljo3;->v:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    check-cast v13, Lag1;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Ljo3;->v:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result v14

    .line 22
    iget-object v1, v0, Ljo3;->n:Lfo3;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Ljo3;->o:Lnd2;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Ljo3;->p:Ljl3;

    .line 29
    .line 30
    move-object v5, v3

    .line 31
    iget-wide v3, v0, Ljo3;->q:J

    .line 32
    .line 33
    move-object v7, v5

    .line 34
    iget-wide v5, v0, Ljo3;->r:J

    .line 35
    .line 36
    move-object v9, v7

    .line 37
    iget-wide v7, v0, Ljo3;->s:J

    .line 38
    .line 39
    move-object v11, v9

    .line 40
    iget-wide v9, v0, Ljo3;->t:J

    .line 41
    .line 42
    move-object v12, v1

    .line 43
    iget-wide v0, v0, Ljo3;->u:J

    .line 44
    .line 45
    move-wide v15, v0

    .line 46
    move-object v0, v11

    .line 47
    move-object v1, v12

    .line 48
    move-wide v11, v15

    .line 49
    invoke-static/range {v0 .. v14}, Lc75;->h(Lfo3;Lnd2;Ljl3;JJJJJLag1;I)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lt64;->a:Lt64;

    .line 53
    .line 54
    return-object v0
.end method
