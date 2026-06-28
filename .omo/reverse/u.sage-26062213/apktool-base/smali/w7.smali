.class public final synthetic Lw7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lka0;

.field public final synthetic o:Lnd2;

.field public final synthetic p:Ldf1;

.field public final synthetic q:Ldf1;

.field public final synthetic r:Ldf1;

.field public final synthetic s:Ljl3;

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:J

.field public final synthetic w:J

.field public final synthetic x:J


# direct methods
.method public synthetic constructor <init>(Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7;->n:Lka0;

    .line 5
    .line 6
    iput-object p2, p0, Lw7;->o:Lnd2;

    .line 7
    .line 8
    iput-object p3, p0, Lw7;->p:Ldf1;

    .line 9
    .line 10
    iput-object p4, p0, Lw7;->q:Ldf1;

    .line 11
    .line 12
    iput-object p5, p0, Lw7;->r:Ldf1;

    .line 13
    .line 14
    iput-object p6, p0, Lw7;->s:Ljl3;

    .line 15
    .line 16
    iput-wide p7, p0, Lw7;->t:J

    .line 17
    .line 18
    iput-wide p9, p0, Lw7;->u:J

    .line 19
    .line 20
    iput-wide p11, p0, Lw7;->v:J

    .line 21
    .line 22
    iput-wide p13, p0, Lw7;->w:J

    .line 23
    .line 24
    move-wide p1, p15

    .line 25
    iput-wide p1, p0, Lw7;->x:J

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v16, p1

    .line 4
    .line 5
    check-cast v16, Lag1;

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
    const/4 v1, 0x7

    .line 15
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 16
    .line 17
    .line 18
    move-result v17

    .line 19
    iget-object v1, v0, Lw7;->n:Lka0;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    iget-object v1, v0, Lw7;->o:Lnd2;

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    iget-object v2, v0, Lw7;->p:Ldf1;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    iget-object v3, v0, Lw7;->q:Ldf1;

    .line 29
    .line 30
    move-object v5, v4

    .line 31
    iget-object v4, v0, Lw7;->r:Ldf1;

    .line 32
    .line 33
    move-object v6, v5

    .line 34
    iget-object v5, v0, Lw7;->s:Ljl3;

    .line 35
    .line 36
    move-object v8, v6

    .line 37
    iget-wide v6, v0, Lw7;->t:J

    .line 38
    .line 39
    move-object v10, v8

    .line 40
    iget-wide v8, v0, Lw7;->u:J

    .line 41
    .line 42
    move-object v12, v10

    .line 43
    iget-wide v10, v0, Lw7;->v:J

    .line 44
    .line 45
    move-object v14, v12

    .line 46
    iget-wide v12, v0, Lw7;->w:J

    .line 47
    .line 48
    move-object v15, v1

    .line 49
    iget-wide v0, v0, Lw7;->x:J

    .line 50
    .line 51
    move-wide/from16 v18, v0

    .line 52
    .line 53
    move-object v0, v14

    .line 54
    move-object v1, v15

    .line 55
    move-wide/from16 v14, v18

    .line 56
    .line 57
    invoke-static/range {v0 .. v17}, Lx7;->a(Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJJLag1;I)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lt64;->a:Lt64;

    .line 61
    .line 62
    return-object v0
.end method
