.class public final Lo00;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lfu3;

.field public static final d:Ln00;


# instance fields
.field public final synthetic a:I

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm00;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfu3;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lfu3;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lo00;->c:Lfu3;

    .line 12
    .line 13
    new-instance v0, Ln00;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ln00;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lo00;->d:Ln00;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lo00;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const-wide/32 v0, 0xa8c0

    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lo00;->b:J

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lo00;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lo00;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-wide v0, p1, Lo00;->b:J

    .line 21
    iput-wide v0, p0, Lo00;->b:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lo00;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Leh;

    .line 12
    .line 13
    const-class v1, Lo00;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Leh;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lo00;->b:J

    .line 23
    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    cmp-long v1, v1, v3

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-wide v2, p0, Lo00;->b:J

    .line 36
    .line 37
    const-string p0, "ns"

    .line 38
    .line 39
    invoke-static {v1, v2, v3, p0}, Ldi0;->x(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v1, Leh;

    .line 44
    .line 45
    const/16 v2, 0x16

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {v1, v2, v3}, Leh;-><init>(IZ)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Leh;->q:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Leh;

    .line 54
    .line 55
    iput-object v1, v2, Leh;->q:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v1, v0, Leh;->q:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object p0, v1, Leh;->p:Ljava/lang/Object;

    .line 60
    .line 61
    const-string p0, "expireAfterWrite"

    .line 62
    .line 63
    iput-object p0, v1, Leh;->o:Ljava/lang/Object;

    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0}, Leh;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
