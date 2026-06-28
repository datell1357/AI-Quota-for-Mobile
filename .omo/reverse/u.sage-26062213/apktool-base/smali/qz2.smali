.class public final synthetic Lqz2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:J

.field public final synthetic p:F

.field public final synthetic q:J

.field public final synthetic r:I

.field public final synthetic s:F


# direct methods
.method public synthetic constructor <init>(Lnd2;JFJIFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqz2;->n:Lnd2;

    .line 5
    .line 6
    iput-wide p2, p0, Lqz2;->o:J

    .line 7
    .line 8
    iput p4, p0, Lqz2;->p:F

    .line 9
    .line 10
    iput-wide p5, p0, Lqz2;->q:J

    .line 11
    .line 12
    iput p7, p0, Lqz2;->r:I

    .line 13
    .line 14
    iput p8, p0, Lqz2;->s:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x187

    .line 10
    .line 11
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    iget-object v0, p0, Lqz2;->n:Lnd2;

    .line 16
    .line 17
    iget-wide v1, p0, Lqz2;->o:J

    .line 18
    .line 19
    iget v3, p0, Lqz2;->p:F

    .line 20
    .line 21
    iget-wide v4, p0, Lqz2;->q:J

    .line 22
    .line 23
    iget v6, p0, Lqz2;->r:I

    .line 24
    .line 25
    iget v7, p0, Lqz2;->s:F

    .line 26
    .line 27
    invoke-static/range {v0 .. v9}, Lrz2;->a(Lnd2;JFJIFLag1;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method
