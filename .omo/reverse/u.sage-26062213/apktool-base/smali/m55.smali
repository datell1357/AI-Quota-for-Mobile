.class public final Lm55;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqo4;


# instance fields
.field public final n:Lqo4;


# direct methods
.method public synthetic constructor <init>(Ldi2;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgt4;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p1}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ldx4;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, v0, v1}, Ldx4;-><init>(Lgt4;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lhn4;->a(Lqo4;)Lqo4;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Lpc4;

    .line 21
    .line 22
    const/16 v2, 0x18

    .line 23
    .line 24
    invoke-direct {v1, v2, v0, p1}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lhn4;->a(Lqo4;)Lqo4;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Ldx4;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v0, v2}, Ldx4;-><init>(Lgt4;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lhn4;->a(Lqo4;)Lqo4;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lui3;

    .line 42
    .line 43
    const/16 v3, 0xa

    .line 44
    .line 45
    invoke-direct {v2, p1, v1, v0, v3}, Lui3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lhn4;->a(Lqo4;)Lqo4;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lm55;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lm55;-><init>(Lqo4;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lhn4;->a(Lqo4;)Lqo4;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lm55;->n:Lqo4;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Lqo4;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm55;->n:Lqo4;

    return-void
.end method


# virtual methods
.method public zza()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lm55;->n:Lqo4;

    .line 2
    .line 3
    invoke-interface {p0}, Lqo4;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lk05;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 13
    .line 14
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method
