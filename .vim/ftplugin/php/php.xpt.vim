XPTemplate priority=personal+

XPT <?class " namespaced class
XSET author=$author
XSET name=fileRoot()
<?php

namespace `namespace^;

/**
 * Class `name^
 * @author `author^
 * @package `namespace^
 */
class `name^
{
    `cursor^
}

XPT <?interface " namespaced interface
XSET author=$author
XSET name=fileRoot()
<?php

namespace `namespace^;

/**
 * Interface `name^
 * @author `author^
 * @package `namespace^
 */
class `name^
{
    `cursor^
}

XPT public " public method
/**
 * `description^
 *
 * `docblock^
 */
public function `name^(`params^)
{
    `cursor^
}

XPT protected " protected method
/**
 * `description^
 *
 * `docblock^
 */
protected function `name^(`params^)
{
    `cursor^
}

XPT private " private method
/**
 * `description^
 *
 * `docblock^
 */
private function `name^(`params^)
{
    `cursor^
}

