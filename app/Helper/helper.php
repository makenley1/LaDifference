<?php

function productImage($path)
{
	return file_exists('storage/'.$path) ? asset('storage/'.$path) : asset('img/not-found.jpg');
}