.class public final synthetic Lq52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Ljl3;

.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lnd2;JJLjl3;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq52;->n:Lnd2;

    .line 5
    .line 6
    iput-wide p2, p0, Lq52;->o:J

    .line 7
    .line 8
    iput-wide p4, p0, Lq52;->p:J

    .line 9
    .line 10
    iput-object p6, p0, Lq52;->q:Ljl3;

    .line 11
    .line 12
    iput-object p7, p0, Lq52;->r:Ljava/util/List;

    .line 13
    .line 14
    iput p8, p0, Lq52;->s:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lq52;->s:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lq52;->n:Lnd2;

    .line 18
    .line 19
    iget-wide v1, p0, Lq52;->o:J

    .line 20
    .line 21
    iget-wide v3, p0, Lq52;->p:J

    .line 22
    .line 23
    iget-object v5, p0, Lq52;->q:Ljl3;

    .line 24
    .line 25
    iget-object v6, p0, Lq52;->r:Ljava/util/List;

    .line 26
    .line 27
    invoke-static/range {v0 .. v8}, Lzf5;->f(Lnd2;JJLjl3;Ljava/util/List;Lag1;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method
