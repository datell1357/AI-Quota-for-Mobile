.class public final Li84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lu33;

.field public final synthetic b:Ln84;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lo20;

.field public final synthetic h:Lu33;

.field public final synthetic i:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lu33;Ln84;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo20;JJLu33;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li84;->a:Lu33;

    .line 5
    .line 6
    iput-object p2, p0, Li84;->b:Ln84;

    .line 7
    .line 8
    iput p3, p0, Li84;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Li84;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Li84;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Li84;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Li84;->g:Lo20;

    .line 17
    .line 18
    iput-object p12, p0, Li84;->h:Lu33;

    .line 19
    .line 20
    iput-object p13, p0, Li84;->i:Landroid/webkit/WebView;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Li84;->a:Lu33;

    .line 7
    .line 8
    iget v0, p1, Lu33;->n:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p1, Lu33;->n:I

    .line 13
    .line 14
    sget-object p1, Lez3;->a:Lra3;

    .line 15
    .line 16
    iget-object v9, p0, Li84;->g:Lo20;

    .line 17
    .line 18
    invoke-virtual {v9}, Lo20;->w()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v2, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Li84;->c:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Li84;->h:Lu33;

    .line 35
    .line 36
    iget v3, v2, Lu33;->n:I

    .line 37
    .line 38
    add-int/lit8 v4, v3, 0x1

    .line 39
    .line 40
    iput v4, v2, Lu33;->n:I

    .line 41
    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "sage(4, \'"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v6, p0, Li84;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "\', \'native-onPageStarted-"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, "\');"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v2, Lh84;

    .line 77
    .line 78
    iget-object v7, p0, Li84;->f:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, p0, Li84;->d:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, p0, Li84;->b:Ln84;

    .line 83
    .line 84
    iget v5, p0, Li84;->c:I

    .line 85
    .line 86
    invoke-direct/range {v2 .. v9}, Lh84;-><init>(Ln84;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo20;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Li84;->i:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
