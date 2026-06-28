.class public final Loe;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:Ln14;

.field public final synthetic p:Lpe1;

.field public final synthetic q:Lo11;

.field public final synthetic r:Ly31;

.field public final synthetic s:Lka0;

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Ln14;Lpe1;Lo11;Ly31;Lka0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Loe;->o:Ln14;

    .line 2
    .line 3
    iput-object p2, p0, Loe;->p:Lpe1;

    .line 4
    .line 5
    iput-object p3, p0, Loe;->q:Lo11;

    .line 6
    .line 7
    iput-object p4, p0, Loe;->r:Ly31;

    .line 8
    .line 9
    iput-object p5, p0, Loe;->s:Lka0;

    .line 10
    .line 11
    iput p6, p0, Loe;->t:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Loe;->t:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v0, p0, Loe;->o:Ln14;

    .line 18
    .line 19
    iget-object v1, p0, Loe;->p:Lpe1;

    .line 20
    .line 21
    iget-object v2, p0, Loe;->q:Lo11;

    .line 22
    .line 23
    iget-object v3, p0, Loe;->r:Ly31;

    .line 24
    .line 25
    iget-object v4, p0, Loe;->s:Lka0;

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lmt1;->e(Ln14;Lpe1;Lo11;Ly31;Lka0;Lag1;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method
