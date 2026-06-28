.class public final Lq54;
.super Lmy2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lq54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq54;

    .line 2
    .line 3
    sget-object v1, Lr54;->a:Lr54;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmy2;-><init>(Llx1;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq54;->c:Lq54;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lo54;

    .line 2
    .line 3
    iget-object p0, p1, Lo54;->n:[I

    .line 4
    .line 5
    array-length p0, p0

    .line 6
    return p0
.end method

.method public final j(Lxb0;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Lp54;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lmy2;->b:Lly2;

    .line 7
    .line 8
    invoke-interface {p1, p0, p2}, Lxb0;->c(Lly2;I)Lvn0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lvn0;->n()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p3}, Lky2;->c(Lky2;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p3, Lp54;->a:[I

    .line 20
    .line 21
    iget p2, p3, Lp54;->b:I

    .line 22
    .line 23
    add-int/lit8 v0, p2, 0x1

    .line 24
    .line 25
    iput v0, p3, Lp54;->b:I

    .line 26
    .line 27
    aput p0, p1, p2

    .line 28
    .line 29
    return-void
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo54;

    .line 2
    .line 3
    iget-object p0, p1, Lo54;->n:[I

    .line 4
    .line 5
    new-instance p1, Lp54;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, p1, Lp54;->a:[I

    .line 11
    .line 12
    array-length p0, p0

    .line 13
    iput p0, p1, Lp54;->b:I

    .line 14
    .line 15
    const/16 p0, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lp54;->b(I)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [I

    .line 3
    .line 4
    new-instance v0, Lo54;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lo54;-><init>([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final o(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p2, Lo54;

    .line 2
    .line 3
    iget-object p2, p2, Lo54;->n:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lmy2;->b:Lly2;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/internal/b;->i(Lly2;I)Lkotlinx/serialization/json/internal/b;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aget v2, p2, v0

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/b;->j(I)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
