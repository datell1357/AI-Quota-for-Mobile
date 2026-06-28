.class public final Lck2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lr6;

.field public final b:Z

.field public final c:Lhk2;

.field public final d:Leg2;

.field public final e:Leg2;


# direct methods
.method public constructor <init>(Lr6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lck2;->a:Lr6;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lck2;->b:Z

    .line 8
    .line 9
    new-instance p1, Lhk2;

    .line 10
    .line 11
    invoke-direct {p1}, Lhk2;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lck2;->c:Lhk2;

    .line 15
    .line 16
    invoke-static {}, Lfr2;->a()Leg2;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lfr2;->a()Leg2;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lck2;->d:Leg2;

    .line 24
    .line 25
    invoke-static {}, Lfr2;->a()Leg2;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lck2;->e:Leg2;

    .line 30
    .line 31
    return-void
.end method

.method public static a(Lck2;Lek2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lck2;->d()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lck2;->d:Leg2;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Leg2;->a(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lck2;->c:Lhk2;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lek2;->c:Lck2;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lhk2;->e:Lvh;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p0, p1, Lek2;->c:Lck2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lhk2;->b()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "Handler \'"

    .line 39
    .line 40
    const-string v0, "\' is already registered with a dispatcher"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Lp61;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lgk2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lck2;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lck2;->e:Leg2;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Leg2;->a(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lck2;->c:Lhk2;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lhk2;->a(Lck2;Lgk2;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final c(Lmo2;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lck2;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "Unsupported priority value: "

    .line 11
    .line 12
    invoke-static {p2, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lck2;->e:Leg2;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Leg2;->a(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lck2;->c:Lhk2;

    .line 29
    .line 30
    invoke-virtual {v0, p0, p1, p2}, Lhk2;->a(Lck2;Lgk2;I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Lgk2;Lbk2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lck2;->d()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lck2;->b:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lck2;->c:Lhk2;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lhk2;->g:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p0, v0}, Lhk2;->c(I)Lek2;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lhk2;->f:Lek2;

    .line 25
    .line 26
    iput v0, p0, Lhk2;->g:I

    .line 27
    .line 28
    iput-object p1, p0, Lhk2;->h:Lgk2;

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1, p2}, Lek2;->e(Lbk2;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object p0, p0, Lhk2;->a:Lwr3;

    .line 38
    .line 39
    new-instance p1, Ljk2;

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljk2;-><init>(Lbk2;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p2, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method
