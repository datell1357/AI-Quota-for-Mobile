.class public abstract Lkl3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lna3;

.field public static final b:Lna3;

.field public static final c:Lna3;

.field public static final d:Lna3;

.field public static final e:Lna3;

.field public static final f:Lna3;

.field public static final g:Lna3;

.field public static final h:Lna3;

.field public static final i:Ldw0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lml3;->d:Lna3;

    .line 2
    .line 3
    sput-object v0, Lkl3;->a:Lna3;

    .line 4
    .line 5
    sget-object v0, Lml3;->h:Lna3;

    .line 6
    .line 7
    sput-object v0, Lkl3;->b:Lna3;

    .line 8
    .line 9
    sget-object v0, Lml3;->g:Lna3;

    .line 10
    .line 11
    sput-object v0, Lkl3;->c:Lna3;

    .line 12
    .line 13
    sget-object v0, Lml3;->e:Lna3;

    .line 14
    .line 15
    sput-object v0, Lkl3;->d:Lna3;

    .line 16
    .line 17
    sget-object v0, Lml3;->f:Lna3;

    .line 18
    .line 19
    sput-object v0, Lkl3;->e:Lna3;

    .line 20
    .line 21
    sget-object v0, Lml3;->b:Lna3;

    .line 22
    .line 23
    sput-object v0, Lkl3;->f:Lna3;

    .line 24
    .line 25
    sget-object v0, Lml3;->c:Lna3;

    .line 26
    .line 27
    sput-object v0, Lkl3;->g:Lna3;

    .line 28
    .line 29
    sget-object v0, Lml3;->a:Lna3;

    .line 30
    .line 31
    sput-object v0, Lkl3;->h:Lna3;

    .line 32
    .line 33
    sget-object v0, Lml3;->i:Ldw0;

    .line 34
    .line 35
    sput-object v0, Lkl3;->i:Ldw0;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/high16 v1, 0x42c80000    # 100.0f

    .line 39
    .line 40
    cmpg-float v0, v1, v0

    .line 41
    .line 42
    if-ltz v0, :cond_0

    .line 43
    .line 44
    cmpl-float v0, v1, v1

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    :cond_0
    const-string v0, "The percent should be in the range of [0, 100]"

    .line 49
    .line 50
    invoke-static {v0}, Ldr1;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method
