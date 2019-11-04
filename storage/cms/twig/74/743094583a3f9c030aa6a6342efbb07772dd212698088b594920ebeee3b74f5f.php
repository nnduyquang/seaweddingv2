<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\xampp\htdocs\seaweddingv2/plugins/quang/contact/components/contact_form/default.htm */
class __TwigTemplate_edd2d77fb9cca5c577fe4bbac8a52737e61ec38e7bf7aa436054840a91132b1b extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<form data-request=\"contact_form::onSend\">

    <div class=\"contact_top\">
        <h3 class=\"title\">Gửi liên hệ</h3>
        <hr>
        <p>
            Nếu bạn có thắc mắc, đừng ngần ngại gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại
            với bạn trong vòng 24 tiếng đồng hồ
        </p>
    </div>
    <div class=\"contact_bottom\">
        <div class=\"form-group\">
            <input type=\"text\" name=\"name\"
                   placeholder=\"Tên Của Bạn\"
                   class=\"form-control\">
            ";
        // line 16
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "first", [0 => "name"], "method", false, false, false, 16), "html", null, true);
        echo "
        </div>
        <div class=\"form-group\">
            <input type=\"text\" name=\"email\"
                   placeholder=\"Email\"
                   class=\"form-control\">
            ";
        // line 22
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "first", [0 => "email"], "method", false, false, false, 22), "html", null, true);
        echo "
        </div>
        <div class=\"form-group\">
            <input type=\"text\" name=\"phone\"
                   placeholder=\"Số điện thoại\"
                   class=\"form-control\">
            ";
        // line 28
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "first", [0 => "phone"], "method", false, false, false, 28), "html", null, true);
        echo "

        </div>
        <div class=\"form-group\">
            <textarea name=\"description\"
                      placeholder=\"Mô tả ngắn về yêu cầu cũng như ngày dự định cưới của bạn\"
                      class=\"form-control\">
             </textarea>
            ";
        // line 36
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["errors"] ?? null), "first", [0 => "description"], "method", false, false, false, 36), "html", null, true);
        echo "

        </div>
        <div class=\"button-group\">
            <button type=\"submit\" class=\"btn btn-contact\">Gửi Liên Hệ

            </button>
        </div>
    </div>
</form>
<div id=\"result\">

</div>

";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/contact/components/contact_form/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  83 => 36,  72 => 28,  63 => 22,  54 => 16,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<form data-request=\"contact_form::onSend\">

    <div class=\"contact_top\">
        <h3 class=\"title\">Gửi liên hệ</h3>
        <hr>
        <p>
            Nếu bạn có thắc mắc, đừng ngần ngại gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại
            với bạn trong vòng 24 tiếng đồng hồ
        </p>
    </div>
    <div class=\"contact_bottom\">
        <div class=\"form-group\">
            <input type=\"text\" name=\"name\"
                   placeholder=\"Tên Của Bạn\"
                   class=\"form-control\">
            {{errors.first('name')}}
        </div>
        <div class=\"form-group\">
            <input type=\"text\" name=\"email\"
                   placeholder=\"Email\"
                   class=\"form-control\">
            {{errors.first('email')}}
        </div>
        <div class=\"form-group\">
            <input type=\"text\" name=\"phone\"
                   placeholder=\"Số điện thoại\"
                   class=\"form-control\">
            {{errors.first('phone')}}

        </div>
        <div class=\"form-group\">
            <textarea name=\"description\"
                      placeholder=\"Mô tả ngắn về yêu cầu cũng như ngày dự định cưới của bạn\"
                      class=\"form-control\">
             </textarea>
            {{errors.first('description')}}

        </div>
        <div class=\"button-group\">
            <button type=\"submit\" class=\"btn btn-contact\">Gửi Liên Hệ

            </button>
        </div>
    </div>
</form>
<div id=\"result\">

</div>

", "C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/contact/components/contact_form/default.htm", "");
    }
}
