.class public final synthetic Lt84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:J

.field public final synthetic p:Ld84;

.field public final synthetic q:Ljava/lang/Boolean;

.field public final synthetic r:Z

.field public final synthetic s:Ly84;

.field public final synthetic t:Le10;

.field public final synthetic u:Lts1;

.field public final synthetic v:Lne1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLd84;Ljava/lang/Boolean;ZLy84;Le10;Lts1;Lne1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt84;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lt84;->o:J

    .line 7
    .line 8
    iput-object p4, p0, Lt84;->p:Ld84;

    .line 9
    .line 10
    iput-object p5, p0, Lt84;->q:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-boolean p6, p0, Lt84;->r:Z

    .line 13
    .line 14
    iput-object p7, p0, Lt84;->s:Ly84;

    .line 15
    .line 16
    iput-object p8, p0, Lt84;->t:Le10;

    .line 17
    .line 18
    iput-object p9, p0, Lt84;->u:Lts1;

    .line 19
    .line 20
    iput-object p10, p0, Lt84;->v:Lne1;

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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    iget-object v0, p0, Lt84;->n:Ljava/lang/String;

    .line 15
    .line 16
    iget-wide v1, p0, Lt84;->o:J

    .line 17
    .line 18
    iget-object v3, p0, Lt84;->p:Ld84;

    .line 19
    .line 20
    iget-object v4, p0, Lt84;->q:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-boolean v5, p0, Lt84;->r:Z

    .line 23
    .line 24
    iget-object v6, p0, Lt84;->s:Ly84;

    .line 25
    .line 26
    iget-object v7, p0, Lt84;->t:Le10;

    .line 27
    .line 28
    iget-object v8, p0, Lt84;->u:Lts1;

    .line 29
    .line 30
    iget-object v9, p0, Lt84;->v:Lne1;

    .line 31
    .line 32
    invoke-static/range {v0 .. v11}, Lkt4;->l(Ljava/lang/String;JLd84;Ljava/lang/Boolean;ZLy84;Le10;Lts1;Lne1;Lag1;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lt64;->a:Lt64;

    .line 36
    .line 37
    return-object p0
.end method
