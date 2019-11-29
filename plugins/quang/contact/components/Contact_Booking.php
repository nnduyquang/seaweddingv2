<?php namespace Quang\Contact\Components;

use Cms\Classes\ComponentBase;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class Contact_Booking extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name' => 'Contact Booking',
            'descrition' => 'Simple contact form'
        ];
    }

    public function onSend()
    {
        $validator = Validator::make(
            [
                'name' => Input::get('name'),
                'email' => Input::get('email'),
                'phone' => Input::get('phone'),
            ],
            [
                'name' => 'required',
                'email' => 'required|email',
                'phone' => 'required'
            ]
        );
        if ($validator->fails()) {
            return ['#result'=>$this->renderPartial('contact_booking::messages',[
                'errorMsgs'=>$validator->messages()->all(),
                'fieldMsgs'=>$validator->messages(),
            ])];
        } else {
            $vars = ['name' => Input::get('name'),'title' => Input::get('title'),'datepick' => Input::get('datepick'), 'email' => Input::get('email'), 'phone' => Input::get('phone'), 'description' => Input::get('description'), 'subject' => 'Thông tin book lịch từ khách hàng'];

            Mail::send('quang.contact::mail_booking_to_customer.message', $vars, function ($message) {
                $message->to(Input::get('email'), 'Sea Wedding - Chụp Ảnh Cưới Đà Nẵng');
                $message->subject('Re: Cám ơn quý khách đã đặt lịch - seawedding.net');

            });
            Mail::send('quang.contact::mail_booking_to_me.message', $vars, function ($message) {
                $message->to('nnduyquang@gmail.com', 'Lịch chụp từ khách hàng');
                $message->subject('Booking lịch chụp từ khách hàng');

            });
            return ['#result'=>$this->renderPartial('contact_booking::success')];
        }

    }

}
