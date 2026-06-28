.class public final Lh71;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Li41;


# instance fields
.field public final a:Lij3;

.field public final b:Lk03;

.field public final c:Lk03;

.field public final d:Lk03;


# direct methods
.method public constructor <init>(Lij3;Lk03;Lk03;Lk03;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh71;->a:Lij3;

    .line 5
    .line 6
    iput-object p2, p0, Lh71;->b:Lk03;

    .line 7
    .line 8
    iput-object p3, p0, Lh71;->c:Lk03;

    .line 9
    .line 10
    iput-object p4, p0, Lh71;->d:Lk03;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lh71;->a:Lij3;

    .line 2
    .line 3
    iget-object v0, v0, Lij3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le61;

    .line 6
    .line 7
    iget-object v1, p0, Lh71;->b:Lk03;

    .line 8
    .line 9
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lgk3;

    .line 14
    .line 15
    iget-object v2, p0, Lh71;->c:Lk03;

    .line 16
    .line 17
    invoke-interface {v2}, Lm03;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lhi0;

    .line 22
    .line 23
    iget-object p0, p0, Lh71;->d:Lk03;

    .line 24
    .line 25
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lek3;

    .line 30
    .line 31
    new-instance v3, Ly61;

    .line 32
    .line 33
    invoke-direct {v3, v0, v1, v2, p0}, Ly61;-><init>(Le61;Lgk3;Lhi0;Lek3;)V

    .line 34
    .line 35
    .line 36
    return-object v3
.end method
