.class public Lcom/distriqt/extension/inappbilling/util/FREUtils;
.super Ljava/lang/Object;
.source "FREUtils.java"


# static fields
.field public static DEBUG_ENABLED:Ljava/lang/Boolean;

.field public static DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;

.field public static ID:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    const-class v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;

    .line 42
    const-string v0, "com.distriqt.EXTENSION"

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->ID:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetObjectAsArrayOfNumbers(Lcom/adobe/fre/FREArray;)[I
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 94
    .local v1, "length":I
    new-array v2, v1, [I

    .line 96
    .local v2, "retArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 98
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 99
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    aput v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[I
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 107
    const/4 v4, 0x0

    new-array v2, v4, [I

    :cond_0
    return-object v2
.end method

.method public static GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 6
    .param p0, "values"    # Lcom/adobe/fre/FREArray;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    .line 72
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    .line 74
    .local v2, "retArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 76
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 77
    .local v3, "value":Lcom/adobe/fre/FREObject;
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "retArray":[Ljava/lang/String;
    .end local v3    # "value":Lcom/adobe/fre/FREObject;
    :catch_0
    move-exception v4

    .line 85
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method public static addViewToAIR(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 165
    sget-object v1, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    .local v0, "fl":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .end local v0    # "fl":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "v"    # Landroid/view/ViewGroup;
    .param p1, "viewClassName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 137
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "a":Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    .end local v0    # "a":Landroid/view/View;
    :goto_1
    return-object v0

    .line 141
    .restart local v0    # "a":Landroid/view/View;
    :cond_0
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "a":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "b":Landroid/view/View;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 145
    goto :goto_1

    .line 135
    .end local v1    # "b":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAIRWindowSurfaceView()Landroid/view/View;
    .locals 3

    .prologue
    .line 154
    sget-object v1, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    .local v0, "fl":Landroid/view/ViewGroup;
    const-string v1, "com.adobe.air.AIRWindowSurfaceView"

    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->findViewByClassName(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    .end local v0    # "fl":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDeviceDefaultOrientation()I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 186
    sget-object v5, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    if-eqz v5, :cond_5

    .line 188
    sget-object v5, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v5}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 189
    .local v2, "windowManager":Landroid/view/WindowManager;
    sget-object v5, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v5}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 191
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 193
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v3, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_4

    .line 205
    :cond_3
    :goto_0
    return v3

    :cond_4
    move v3, v4

    .line 202
    goto :goto_0

    .line 205
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "rotation":I
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 58
    sget-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->DEBUG_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    const-string v0, "extension:error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 53
    sget-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    .line 54
    return-void
.end method

.method public static listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .param p0, "v"    # Landroid/view/ViewGroup;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "logPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/view/View;
    sget-object v3, Lcom/distriqt/extension/inappbilling/util/FREUtils;->TAG:Ljava/lang/String;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "a":Landroid/view/View;
    invoke-static {v0, v2}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->listViews(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 47
    sget-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->DEBUG_OUTPUTS_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/distriqt/extension/inappbilling/util/FREUtils;->ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static moveToBack(Landroid/view/View;)V
    .locals 4
    .param p0, "currentView"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 176
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 177
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method
