.class public final synthetic Lu84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lp84;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:J

.field public final synthetic r:Z

.field public final synthetic s:Le10;

.field public final synthetic t:Lts1;

.field public final synthetic u:J

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lp84;Ljava/lang/String;JZLe10;Lts1;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu84;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lu84;->o:Lp84;

    .line 7
    .line 8
    iput-object p3, p0, Lu84;->p:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lu84;->q:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lu84;->r:Z

    .line 13
    .line 14
    iput-object p7, p0, Lu84;->s:Le10;

    .line 15
    .line 16
    iput-object p8, p0, Lu84;->t:Lts1;

    .line 17
    .line 18
    iput-wide p9, p0, Lu84;->u:J

    .line 19
    .line 20
    iput p11, p0, Lu84;->v:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lu84;->v:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v0, p0, Lu84;->n:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lu84;->o:Lp84;

    .line 20
    .line 21
    iget-object v2, p0, Lu84;->p:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v3, p0, Lu84;->q:J

    .line 24
    .line 25
    iget-boolean v5, p0, Lu84;->r:Z

    .line 26
    .line 27
    iget-object v6, p0, Lu84;->s:Le10;

    .line 28
    .line 29
    iget-object v7, p0, Lu84;->t:Lts1;

    .line 30
    .line 31
    iget-wide v8, p0, Lu84;->u:J

    .line 32
    .line 33
    invoke-static/range {v0 .. v11}, Lkt4;->c(Ljava/lang/String;Lp84;Ljava/lang/String;JZLe10;Lts1;JLag1;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lt64;->a:Lt64;

    .line 37
    .line 38
    return-object p0
.end method
