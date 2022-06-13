<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Coupon;
use Illuminate\Http\Response; 
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class CouponsController extends Controller
{
 
    public function applyCoupon(Request $request)
    {
        $validateField = $request->validate([
            'couponCode' => 'required|string',
            'total' => ''
        ]);
       
        $coupon = Coupon::where('code', $validateField['couponCode'])->first();
        //return $coupon["percentOff"];
       
        if(!$coupon){
            return response([
                'msg' => "Invalid coupon code. Please try again."
            ], 401);
        }

        $discount = $coupon->discount($validateField['total']);
        $finalPrice = $validateField['total'] - $discount;
        $couponType = $coupon['type'];
        $couponCode = $coupon['code'];
        $couponPercentOff = $coupon["percentOff"];
        //return $finalPrice;
        $expirationDate = $coupon["expired_at"];
        $currentDate = date('Y-m-d');
         //$currentDate = date('2022-01-02');

        if($expirationDate >= $currentDate ) {
            $response = [
                'couponCode' => $couponCode,
                'couponType' => $couponType,
                'couponPercentOff' => $couponPercentOff,
                'discount' => $discount, 
                'finalPrice' => $finalPrice,
                'msg' => "Coupone has been applied."
            ];
        } else {
            return response([
                'msg' => "This coupon has expired."
            ], 401);
        }
       

        return response($response, 201);
    }

    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
