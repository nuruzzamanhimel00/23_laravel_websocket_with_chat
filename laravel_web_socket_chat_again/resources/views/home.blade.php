@extends('layouts.app')

@section('content')
<div class="container">
    <chat-component :user="{{ json_encode(auth()->user()) }}" />
</div>
@endsection
