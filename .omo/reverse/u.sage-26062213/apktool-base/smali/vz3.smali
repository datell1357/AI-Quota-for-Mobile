.class public final Lvz3;
.super Le60;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public Y:Z

.field public Z:Lpe1;

.field public final a0:Lvc3;


# direct methods
.method public constructor <init>(ZLvf2;ZLq93;Lpe1;)V
    .locals 7

    .line 1
    new-instance v1, Lys0;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {v1, p5, p1, v0}, Lys0;-><init>(Lpe1;ZI)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v3, p2

    .line 11
    move v6, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Le60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, v0, Lvz3;->Y:Z

    .line 17
    .line 18
    iput-object p5, v0, Lvz3;->Z:Lpe1;

    .line 19
    .line 20
    new-instance p0, Lvc3;

    .line 21
    .line 22
    const/16 p1, 0xa

    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p0, v0, Lvz3;->a0:Lvc3;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final J0(Lph3;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lvz3;->Y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lwz3;->n:Lwz3;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lwz3;->o:Lwz3;

    .line 9
    .line 10
    :goto_0
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 11
    .line 12
    sget-object v1, Llh3;->I:Loh3;

    .line 13
    .line 14
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    aget-object v4, v2, v3

    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lmj1;->H:Lia;

    .line 24
    .line 25
    sget-object v1, Llh3;->s:Loh3;

    .line 26
    .line 27
    const/16 v4, 0x9

    .line 28
    .line 29
    aget-object v4, v2, v4

    .line 30
    .line 31
    invoke-interface {p1, v1, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lvz3;->Y:Z

    .line 35
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-lt v0, v3, :cond_1

    .line 40
    .line 41
    new-instance v0, Lza;

    .line 42
    .line 43
    invoke-static {p0}, Ly2;->i(Z)Landroid/view/autofill/AutofillValue;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Lza;-><init>(Landroid/view/autofill/AutofillValue;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v0, v1

    .line 52
    :goto_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    sget-object p0, Llh3;->t:Loh3;

    .line 55
    .line 56
    const/16 v3, 0xa

    .line 57
    .line 58
    aget-object v2, v2, v3

    .line 59
    .line 60
    invoke-interface {p1, p0, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    new-instance p0, Lp40;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lp40;-><init>(Lph3;I)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lah3;->h:Loh3;

    .line 70
    .line 71
    new-instance v2, Lo2;

    .line 72
    .line 73
    invoke-direct {v2, v1, p0}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
