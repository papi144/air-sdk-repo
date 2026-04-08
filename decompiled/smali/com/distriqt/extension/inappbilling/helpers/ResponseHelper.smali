.class public Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;
.super Ljava/lang/Object;
.source "ResponseHelper.java"


# static fields
.field public static RESPONSE_BILLING_UNAVAILABLE:Ljava/lang/String;

.field public static RESPONSE_DEVELOPER_ERROR:Ljava/lang/String;

.field public static RESPONSE_ERROR:Ljava/lang/String;

.field public static RESPONSE_ITEM_ALREADY_OWNED:Ljava/lang/String;

.field public static RESPONSE_ITEM_NOT_OWNED:Ljava/lang/String;

.field public static RESPONSE_ITEM_UNAVAILABLE:Ljava/lang/String;

.field public static RESPONSE_OK:Ljava/lang/String;

.field public static RESPONSE_UNKNOWN:Ljava/lang/String;

.field public static RESPONSE_USER_CANCELLED:Ljava/lang/String;

.field public static STATE_CANCELLED:Ljava/lang/String;

.field public static STATE_FAILED:Ljava/lang/String;

.field public static STATE_PURCHASED:Ljava/lang/String;

.field public static STATE_REFUNDED:Ljava/lang/String;

.field public static STATE_RESTORED:Ljava/lang/String;

.field public static STATE_UNKNOWN:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "transaction:unknown"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_UNKNOWN:Ljava/lang/String;

    .line 39
    const-string v0, "transaction:purchased"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_PURCHASED:Ljava/lang/String;

    .line 40
    const-string v0, "transaction:failed"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_FAILED:Ljava/lang/String;

    .line 41
    const-string v0, "transaction:refunded"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_REFUNDED:Ljava/lang/String;

    .line 42
    const-string v0, "transaction:cancelled"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_CANCELLED:Ljava/lang/String;

    .line 43
    const-string v0, "transaction:restored"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_RESTORED:Ljava/lang/String;

    .line 46
    const-string v0, "response:ok"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_OK:Ljava/lang/String;

    .line 47
    const-string v0, "response:user:cancelled"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_USER_CANCELLED:Ljava/lang/String;

    .line 48
    const-string v0, "response:unknown"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_UNKNOWN:Ljava/lang/String;

    .line 49
    const-string v0, "response:billing:unavailable"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_BILLING_UNAVAILABLE:Ljava/lang/String;

    .line 50
    const-string v0, "response:item:unavailable"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_UNAVAILABLE:Ljava/lang/String;

    .line 51
    const-string v0, "response:developer:error"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_DEVELOPER_ERROR:Ljava/lang/String;

    .line 52
    const-string v0, "response:error"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ERROR:Ljava/lang/String;

    .line 53
    const-string v0, "response:item:already:owned"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_ALREADY_OWNED:Ljava/lang/String;

    .line 54
    const-string v0, "response:item:not:owned"

    sput-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_NOT_OWNED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "details"    # Lcom/android/vending/billing/util/SkuDetails;

    .prologue
    .line 59
    sget-object v2, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    const-string v3, "encodeProduct( %s ) : %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v1, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "description"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "price"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    const-string v2, "priceString"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getPriceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v2, "locale"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "countryCode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "currencySymbol"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getPriceString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\d.,]+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "internationalCurrencySymbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "currencyCode"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v2, "itemType"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v2, "source"

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 81
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static encodeProductAsXml(Ljava/lang/String;Lcom/android/vending/billing/util/SkuDetails;)Ljava/lang/String;
    .locals 9
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "details"    # Lcom/android/vending/billing/util/SkuDetails;

    .prologue
    const/4 v8, 0x0

    .line 91
    sget-object v5, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodeProductAsXml( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string v4, "<product>"

    .line 95
    .local v4, "productXML":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "priceString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    .local v2, "price":Ljava/lang/Number;
    const-string v0, ""

    .line 100
    .local v0, "currency":Ljava/lang/String;
    :try_start_0
    const-string v5, "[\\d.,]+"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    const-string v6, "[^\\d.]+"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<id>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</id>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<title>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</title>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<description>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</description>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<currencySymbol>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</currencySymbol>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<price>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</price>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<priceString>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</priceString>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<locale></locale>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<itemType>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</itemType>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<source><![CDATA["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/billing/util/SkuDetails;->getJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]]></source>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</product>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    sget-object v5, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-object v4

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static encodePurchase(Ljava/lang/String;Lcom/android/vending/billing/util/Purchase;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->encodePurchase(Ljava/lang/String;Lcom/android/vending/billing/util/Purchase;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static encodePurchase(Ljava/lang/String;Lcom/android/vending/billing/util/Purchase;Z)Lorg/json/JSONObject;
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "purchase"    # Lcom/android/vending/billing/util/Purchase;
    .param p2, "restored"    # Z

    .prologue
    const/4 v2, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "productId"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v3, "error"

    const-string v4, "Invalid Purchase"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v3, "errorCode"

    const-string v4, "-1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 148
    :cond_0
    sget-object v3, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    const-string v4, "encodePurchase( %s )"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->purchaseToObject(Lcom/android/vending/billing/util/Purchase;)Lorg/json/JSONObject;

    move-result-object v1

    .line 152
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    if-eqz p2, :cond_1

    .line 154
    const-string v3, "transactionState"

    sget-object v4, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_RESTORED:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "originalTransaction"

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->purchaseToObject(Lcom/android/vending/billing/util/Purchase;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_1
    const-string v3, "error"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v3, "errorCode"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v0}, Lcom/distriqt/extension/inappbilling/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    move-object v1, v2

    .line 168
    goto :goto_0
.end method

.method public static encodePurchaseAsXml(Lcom/android/vending/billing/util/Purchase;)Ljava/lang/String;
    .locals 10
    .param p0, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 200
    sget-object v3, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    const-string v4, "Invalid purchase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "<transaction><error>Invalid Purchase|-1</error></transaction>"

    .line 231
    :goto_0
    return-object v1

    .line 204
    :cond_0
    sget-object v3, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodePurchase( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseState()I

    move-result v3

    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->getPurchaseState(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "transactionState":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 210
    .local v0, "date":Ljava/util/Date;
    sget-object v3, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodePurchase( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "<transaction>"

    .line 214
    .local v1, "purchaseXML":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<productId>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</productId>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<quantity>1</quantity>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<transactionDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</transactionDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<transactionIdentifier>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</transactionIdentifier>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<transactionState>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</transactionState>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<transactionReceipt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</transactionReceipt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<developerPayload>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</developerPayload>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<signature>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</signature>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<originalMessage><![CDATA["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]]></originalMessage>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<error></error>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</transaction>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    goto/16 :goto_0
.end method

.method public static getPurchaseState(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 291
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_UNKNOWN:Ljava/lang/String;

    .line 292
    .local v0, "transactionState":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 306
    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_PURCHASED:Ljava/lang/String;

    .line 296
    goto :goto_0

    .line 299
    :pswitch_1
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_CANCELLED:Ljava/lang/String;

    .line 300
    goto :goto_0

    .line 303
    :pswitch_2
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->STATE_REFUNDED:Ljava/lang/String;

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getResponseState(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 237
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_UNKNOWN:Ljava/lang/String;

    .line 238
    .local v0, "responseState":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 285
    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_OK:Ljava/lang/String;

    .line 243
    goto :goto_0

    .line 247
    :pswitch_1
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_USER_CANCELLED:Ljava/lang/String;

    .line 248
    goto :goto_0

    .line 252
    :pswitch_2
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_UNKNOWN:Ljava/lang/String;

    .line 253
    goto :goto_0

    .line 257
    :pswitch_3
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_BILLING_UNAVAILABLE:Ljava/lang/String;

    .line 258
    goto :goto_0

    .line 262
    :pswitch_4
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_UNAVAILABLE:Ljava/lang/String;

    .line 263
    goto :goto_0

    .line 267
    :pswitch_5
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_DEVELOPER_ERROR:Ljava/lang/String;

    .line 268
    goto :goto_0

    .line 272
    :pswitch_6
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ERROR:Ljava/lang/String;

    .line 273
    goto :goto_0

    .line 277
    :pswitch_7
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_ALREADY_OWNED:Ljava/lang/String;

    .line 278
    goto :goto_0

    .line 282
    :pswitch_8
    sget-object v0, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->RESPONSE_ITEM_NOT_OWNED:Ljava/lang/String;

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static purchaseToObject(Lcom/android/vending/billing/util/Purchase;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "purchase"    # Lcom/android/vending/billing/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v0, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseState()I

    move-result v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/helpers/ResponseHelper;->getPurchaseState(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "transactionState":Ljava/lang/String;
    const-string v2, "productId"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v2, "quantity"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v2, "transactionDate"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getPurchaseTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string v2, "transactionIdentifier"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v2, "transactionState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v2, "transactionReceipt"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v2, "developerPayload"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "signature"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "originalMessage"

    invoke-virtual {p0}, Lcom/android/vending/billing/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    return-object v0
.end method
