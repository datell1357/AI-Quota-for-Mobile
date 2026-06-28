.class public final synthetic Lqt;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lqt;->n:I

    .line 2
    .line 3
    iput-object p3, p0, Lqt;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lqt;->o:I

    .line 6
    .line 7
    iput-object p4, p0, Lqt;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lqt;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lqt;->q:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lqt;->o:I

    .line 7
    .line 8
    iget-object p0, p0, Lqt;->p:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Let0;

    .line 14
    .line 15
    iget-object p0, p0, Let0;->b:Liz2;

    .line 16
    .line 17
    invoke-interface {p0, v3, v2}, Liz2;->n(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Ls90;

    .line 22
    .line 23
    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 37
    .line 38
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v3, v1, v0}, Lp6;->a(IILandroid/content/Intent;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p0, Ls90;

    .line 47
    .line 48
    check-cast v2, Li3;

    .line 49
    .line 50
    iget-object v0, v2, Li3;->a:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v1, p0, Lp6;->a:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v2, p0, Lp6;->e:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lm6;

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object v3, v2, Lm6;->a:Lf6;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v3, 0x0

    .line 81
    :goto_0
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lp6;->g:Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lp6;->f:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, v2, Lm6;->a:Lf6;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lp6;->d:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    invoke-interface {v2, v0}, Lf6;->f(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void

    .line 111
    :pswitch_2
    check-cast p0, Lu/sage/a;

    .line 112
    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    sget-object v0, Lez3;->a:Lra3;

    .line 120
    .line 121
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    new-array p0, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget v4, p0, Lu/sage/a;->B:I

    .line 134
    .line 135
    if-eq v4, v3, :cond_5

    .line 136
    .line 137
    sget-object v0, Lez3;->a:Lra3;

    .line 138
    .line 139
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    new-array p0, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    sget-object v4, Lez3;->a:Lra3;

    .line 152
    .line 153
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    new-array v1, v1, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lv4;

    .line 165
    .line 166
    invoke-direct {v1, p0, v3}, Lv4;-><init>(Lu/sage/a;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
