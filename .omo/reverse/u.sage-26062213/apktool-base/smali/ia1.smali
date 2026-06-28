.class public final Lia1;
.super Lkr0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lco2;
.implements Lfc0;


# instance fields
.field public final D:Lka1;

.field public E:Li02;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lkr0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lka1;

    .line 5
    .line 6
    new-instance v1, Lha1;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    const-class v4, Lia1;

    .line 12
    .line 13
    const-string v5, "onFocusStateChange"

    .line 14
    .line 15
    const-string v6, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v3, p0

    .line 19
    invoke-direct/range {v1 .. v9}, Lha1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 20
    .line 21
    .line 22
    const/16 p0, 0x9

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, v2, v1, p0}, Lka1;-><init>(ILdf1;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 29
    .line 30
    .line 31
    iput-object v0, v3, Lia1;->D:Lka1;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 3

    .line 1
    new-instance v0, Lw33;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj9;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-direct {v1, v2, v0, p0}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1}, Lix;->H(Lmd2;Lne1;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Li02;

    .line 18
    .line 19
    iget-object v1, p0, Lia1;->D:Lka1;

    .line 20
    .line 21
    invoke-virtual {v1}, Lka1;->L0()Lfa1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lfa1;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lia1;->E:Li02;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Li02;->b()V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Li02;->a()Li02;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    iput-object v0, p0, Lia1;->E:Li02;

    .line 46
    .line 47
    :cond_2
    return-void
.end method
